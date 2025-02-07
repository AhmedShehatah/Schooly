import 'package:freezed_annotation/freezed_annotation.dart';

enum UserType {
  @JsonValue(1)
  individual,
  @JsonValue(2)
  company
}
