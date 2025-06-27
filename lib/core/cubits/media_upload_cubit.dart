import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/media/entities/uploaded_file.dart';
import '../../domain/media/use_cases/upload_file_use_case.dart';
import '../states/base_state.dart';

class MediaUploadCubit extends Cubit<BaseState<UploadedFile>> {
  MediaUploadCubit(this._useCase) : super(const BaseState.initial());
  final UploadUseCase _useCase;
  Future<void> uploadAttachment({required String path}) async {
    emit(const BaseState.loading());
    final params = UploadParams(path: path);
    final result = await _useCase(params: params);
    return result.fold((e) {
      emit(BaseState.failure(failure: e));
    }, (data) {
      emit(BaseState.success(data: data));
    });
  }

  void reset() {
    emit(const BaseState.initial());
  }
}
