import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/failure/failure.dart';

part 'base_state.freezed.dart';

@freezed
@immutable
sealed class BaseState<T> with _$BaseState<T> {
  const BaseState._();

  const factory BaseState.initial() = _InitialState;

  const factory BaseState.loading() = _LoadingState;

  const factory BaseState.uploading({required UploadingStateParams params}) =
      _UploadingState;

  const factory BaseState.failure({required Failure failure}) = _FailureState;

  const factory BaseState.empty() = _EmptyState;

  const factory BaseState.success({required T data}) = _SuccessState<T>;
}

@freezed
class UploadingStateParams with _$UploadingStateParams {
  const factory UploadingStateParams({
    required double progress,
    required String path,
  }) = _UploadingStateParams;
}
