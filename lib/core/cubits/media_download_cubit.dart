import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/media/use_cases/download_file_use_case.dart';
import '../states/base_state.dart';

class DownloadAttachmentCubit extends Cubit<BaseState<Uint8List>> {
  DownloadAttachmentCubit({
    required DownloadFileUseCase downloadFileUseCase,
  })  : _useCase = downloadFileUseCase,
        super(const BaseState.initial());

  final DownloadFileUseCase _useCase;
  Future<void> downloadAttachment(
      {required String url, required String fileName}) async {
    emit(const BaseState.loading());
    final result = await _useCase(
        params: DownloadParams(
            url: url,
            fileName: fileName,
            isClosable: true,
            onProgress: (count, total) {
              emit(BaseState.progress(progress: count / total));
            }));

    result.fold(
      (failure) => emit(BaseState.failure(failure: failure)),
      (u8List) => emit(BaseState.success(data: u8List)),
    );
  }
}
