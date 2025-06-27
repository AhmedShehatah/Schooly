import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/network/failure/failure.dart';
import '../../../core/states/base_state.dart';

class CameraCubit extends Cubit<BaseState<void>> {
  CameraCubit() : super(const BaseState.initial());
  late List<CameraDescription> _cameras;
  late CameraController _controller;
  CameraController get controller => _controller;

  Future<void> initCameras() async {
    emit(const BaseState.loading());
    WidgetsFlutterBinding.ensureInitialized();
    _cameras = await availableCameras();
    _controller = CameraController(_cameras[1], ResolutionPreset.medium);
    try {
      await _controller.initialize();
      emit(const BaseState.success(data: null));
    } catch (e) {
      emit(BaseState.failure(failure: Failure.unknown(message: e.toString())));
    }
  }
}
