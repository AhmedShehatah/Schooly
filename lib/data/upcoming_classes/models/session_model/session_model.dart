import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/upcoming_classes/entities/sessions/session.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
class SessionModel with _$SessionModel {
  const SessionModel._();
  const factory SessionModel({
    required String token,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);

  Session toEntity() => Session(token: token);
}
