import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/web.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/cubits/user_cubit.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/dimensions.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../home/pages/home_screen.dart';

class LessonMeetingScreen extends StatefulWidget {
  const LessonMeetingScreen(
      {super.key, required this.channelName, required this.token});
  final String channelName;
  final String token;
  static const String routeName = '/call-screen';

  @override
  State<LessonMeetingScreen> createState() => _LessonMeetingScreenState();
}

class _LessonMeetingScreenState extends State<LessonMeetingScreen> {
  late RtcEngine _engine;
  final List<int> _remoteUids = []; // Store multiple remote UIDs
  bool _localUserJoined = false;
  bool _isCameraOn = true;
  bool _isMicOn = true;
  bool _isFrontCamera = true;
  Offset _localVideoPosition =
      const Offset(20, 20); // Initial position for local video

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  Future<void> initAgora() async {
    if (!(await Permission.microphone.isGranted)) {
      await [Permission.microphone, Permission.camera].request();
    }
    _engine = createAgoraRtcEngine();
    await _engine.initialize(RtcEngineContext(
      appId: dotenv.get('AGORA_APP_ID'),
      channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
    ));

    _engine.registerEventHandler(
      RtcEngineEventHandler(
        onError: (error, message) {
          Logger().e(error.toString());
          Logger().e(message);
        },
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          Logger().d('local user ${connection.localUid} joined');
          setState(() {
            _localUserJoined = true;
          });
        },
        onConnectionBanned: (connection) {
          Logger().d(connection.toString());
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          Logger().d('remote user $remoteUid joined');
          setState(() {
            _remoteUids.add(remoteUid); // Add remote user to the list
          });
        },
        onRemoteVideoStateChanged: (_, __, ___, ____, _____) {
          Logger().d('onRemoteVideoStateChanged');
          setState(() {});
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          Logger().d('remote user $remoteUid left channel');
          setState(() {
            _remoteUids.remove(remoteUid); // Remove remote user from the list
          });
        },
        onTokenPrivilegeWillExpire: (RtcConnection connection, String token) {
          Logger().d(
              '[onTokenPrivilegeWillExpire] connection: ${connection.toJson()}, token: $token');
        },
      ),
    );

    await _engine.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
    await _engine.enableVideo();
    await _engine.startPreview();

    await _engine.joinChannelWithUserAccount(
      channelId: widget.channelName,
      token: widget.token,
      userAccount: sl<UserCubit>().state!.id,
      options: const ChannelMediaOptions(),
    );
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _dispose();
  }

  Future<void> _dispose() async {
    await _engine.leaveChannel();
    await _engine.release();
  }

  Widget _remoteVideo(int uid) {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 15.borderRadius,
        ),
        child: _isCameraOn
            ? AgoraVideoView(
                controller: VideoViewController.remote(
                  rtcEngine: _engine,
                  canvas: VideoCanvas(
                    uid: uid,
                  ),
                  connection: RtcConnection(channelId: widget.channelName),
                ),
              )
            : Center(
                child: Assets.images.profile.image(),
              ),
      ),
    );
  }

  Widget _renderRemoteUsers() {
    if (_remoteUids.isEmpty) {
      return Center(
        child: CustomText.s16(
          '${lz.waitingForOthersToJoin}...',
          center: true,
          color: Colors.white,
        ),
      );
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 videos per row
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: _remoteUids.length,
      itemBuilder: (context, index) {
        return _remoteVideo(_remoteUids[index]);
      },
    );

    // Dynamic layout based on the number of remote users
  }

  Future<void> _toggleCamera() async {
    setState(() {
      _isCameraOn = !_isCameraOn;
    });
    if (_isCameraOn) {
      await _engine.enableVideo();
    } else {
      await _engine.disableVideo();
    }
  }

  Future<void> _toggleMic() async {
    setState(() {
      _isMicOn = !_isMicOn;
    });
    if (_isMicOn) {
      await _engine.enableAudio();
    } else {
      await _engine.disableAudio();
    }
  }

  Future<void> _switchCamera() async {
    setState(() {
      _isFrontCamera = !_isFrontCamera;
    });
    await _engine.switchCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primary.color7,
      body: Padding(
        padding: Dimensions.defaultPagePadding,
        child: Stack(
          children: [
            _renderRemoteUsers(), // Render all remote users dynamically
            Positioned(
              left: _localVideoPosition.dx,
              top: _localVideoPosition.dy,
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    _localVideoPosition += details.delta;
                  });
                },
                child: SizedBox(
                  width: 100,
                  height: 150,
                  child: Center(
                    child: _localUserJoined
                        ? GridTile(
                            child: AgoraVideoView(
                              controller: VideoViewController(
                                rtcEngine: _engine,
                                canvas: const VideoCanvas(uid: 0),
                              ),
                            ),
                          )
                        : const CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFloatingButton(
                    onPressed: _toggleCamera,
                    icon: _isCameraOn ? Icons.videocam : Icons.videocam_off,
                  ),
                  const SizedBox(width: 20),
                  _buildFloatingButton(
                    onPressed: _toggleMic,
                    icon: _isMicOn ? Icons.mic : Icons.mic_off,
                  ),
                  const SizedBox(width: 20),
                  _buildFloatingButton(
                    onPressed: _switchCamera,
                    icon: Icons.switch_camera,
                  ),
                  const SizedBox(width: 20),
                  _buildFloatingButton(
                    onPressed: () async {
                      _dispose().then((_) {
                        context.goNamed(HomeScreen.routeName);
                      });
                    },
                    icon: Icons.call_end,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingButton({
    required void Function() onPressed,
    required IconData icon,
  }) {
    return FloatingActionButton(
      backgroundColor: Palette.primary.color4,
      heroTag: icon.toString(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
