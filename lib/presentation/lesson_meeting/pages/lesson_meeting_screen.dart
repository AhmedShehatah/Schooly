import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/web.dart';
import 'package:permission_handler/permission_handler.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key, required this.channelName, required this.token});
  final String channelName;
  final String token;
  static const String routeName = '/call-screen';

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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

  void initAgora() async {
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

    await _engine.joinChannel(
      channelId: widget.channelName,
      token: widget.token,
      uid: 0,
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
    return AgoraVideoView(
      controller: VideoViewController.remote(
        rtcEngine: _engine,
        canvas: VideoCanvas(uid: uid),
        connection: RtcConnection(channelId: widget.channelName),
      ),
    );
  }

  Widget _renderRemoteUsers() {
    if (_remoteUids.isEmpty) {
      return const Center(
        child: Text(
          'Waiting for other users to join...',
          textAlign: TextAlign.center,
        ),
      );
    }

    // Dynamic layout based on the number of remote users
    switch (_remoteUids.length) {
      case 1:
        return _remoteVideo(_remoteUids[0]); // Single user fills the screen
      case 2:
        return Row(
          children: [
            Expanded(child: _remoteVideo(_remoteUids[0])),
            Expanded(child: _remoteVideo(_remoteUids[1])),
          ],
        );
      case 3:
        return Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: _remoteVideo(_remoteUids[0])),
                  Expanded(child: _remoteVideo(_remoteUids[1])),
                ],
              ),
            ),
            Expanded(child: _remoteVideo(_remoteUids[2])),
          ],
        );
      default:
        // For 4 or more users, use a grid
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
    }
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
      appBar: AppBar(
        title: const Text('Agora Video Call'),
      ),
      body: Stack(
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
                      ? AgoraVideoView(
                          controller: VideoViewController(
                            rtcEngine: _engine,
                            canvas: const VideoCanvas(uid: 0),
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
                FloatingActionButton(
                  onPressed: _toggleCamera,
                  child: Icon(
                    _isCameraOn ? Icons.videocam : Icons.videocam_off,
                  ),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: _toggleMic,
                  child: Icon(
                    _isMicOn ? Icons.mic : Icons.mic_off,
                  ),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: _switchCamera,
                  child: const Icon(Icons.switch_camera),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    _engine.leaveChannel().then((_) {
                      Navigator.of(context).pop();
                    });
                  },
                  child: const Icon(Icons.call_end),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
