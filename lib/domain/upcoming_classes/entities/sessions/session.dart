import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const Session._();
  const factory Session({
    required String token,
  }) = _Session;
}
