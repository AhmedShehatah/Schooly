import 'package:freezed_annotation/freezed_annotation.dart';

class ToNullableNumConvertor implements JsonConverter<num?, dynamic> {
  const ToNullableNumConvertor();

  @override
  num? fromJson(json) {
    if (json is String) {
      return num.parse(json);
    }

    return json;
  }

  @override
  String? toJson(dynamic object) {
    return object.toString();
  }
}

class ToNumConvertor implements JsonConverter<num, dynamic> {
  const ToNumConvertor();

  @override
  num fromJson(json) {
    if (json is String) {
      return num.parse(json);
    }

    return json;
  }

  @override
  String? toJson(dynamic object) {
    return object.toString();
  }
}

class IntToBoolConvertor implements JsonConverter<bool, dynamic> {
  const IntToBoolConvertor();

  @override
  bool fromJson(dynamic json) =>
      json == 1 ||
      json == '1' ||
      json == true ||
      json.toString().toLowerCase() == 'true';

  @override
  int toJson(bool object) => object ? 1 : 0;
}
