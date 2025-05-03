// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_session_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddNewSessionParams {
  String? get title => throw _privateConstructorUsedError;
  String? get classRoomId => throw _privateConstructorUsedError;
  LessonType? get lessonType => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  /// Serializes this AddNewSessionParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddNewSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddNewSessionParamsCopyWith<AddNewSessionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewSessionParamsCopyWith<$Res> {
  factory $AddNewSessionParamsCopyWith(
          AddNewSessionParams value, $Res Function(AddNewSessionParams) then) =
      _$AddNewSessionParamsCopyWithImpl<$Res, AddNewSessionParams>;
  @useResult
  $Res call(
      {String? title,
      String? classRoomId,
      LessonType? lessonType,
      String? date,
      String? from,
      String? to});
}

/// @nodoc
class _$AddNewSessionParamsCopyWithImpl<$Res, $Val extends AddNewSessionParams>
    implements $AddNewSessionParamsCopyWith<$Res> {
  _$AddNewSessionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddNewSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? classRoomId = freezed,
    Object? lessonType = freezed,
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      classRoomId: freezed == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as LessonType?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddNewSessionParamsImplCopyWith<$Res>
    implements $AddNewSessionParamsCopyWith<$Res> {
  factory _$$AddNewSessionParamsImplCopyWith(_$AddNewSessionParamsImpl value,
          $Res Function(_$AddNewSessionParamsImpl) then) =
      __$$AddNewSessionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? classRoomId,
      LessonType? lessonType,
      String? date,
      String? from,
      String? to});
}

/// @nodoc
class __$$AddNewSessionParamsImplCopyWithImpl<$Res>
    extends _$AddNewSessionParamsCopyWithImpl<$Res, _$AddNewSessionParamsImpl>
    implements _$$AddNewSessionParamsImplCopyWith<$Res> {
  __$$AddNewSessionParamsImplCopyWithImpl(_$AddNewSessionParamsImpl _value,
      $Res Function(_$AddNewSessionParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddNewSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? classRoomId = freezed,
    Object? lessonType = freezed,
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$AddNewSessionParamsImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      classRoomId: freezed == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as LessonType?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$AddNewSessionParamsImpl extends _AddNewSessionParams {
  const _$AddNewSessionParamsImpl(
      {this.title,
      this.classRoomId,
      this.lessonType,
      this.date,
      this.from,
      this.to})
      : super._();

  @override
  final String? title;
  @override
  final String? classRoomId;
  @override
  final LessonType? lessonType;
  @override
  final String? date;
  @override
  final String? from;
  @override
  final String? to;

  @override
  String toString() {
    return 'AddNewSessionParams(title: $title, classRoomId: $classRoomId, lessonType: $lessonType, date: $date, from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewSessionParamsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.classRoomId, classRoomId) ||
                other.classRoomId == classRoomId) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, classRoomId, lessonType, date, from, to);

  /// Create a copy of AddNewSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewSessionParamsImplCopyWith<_$AddNewSessionParamsImpl> get copyWith =>
      __$$AddNewSessionParamsImplCopyWithImpl<_$AddNewSessionParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddNewSessionParamsImplToJson(
      this,
    );
  }
}

abstract class _AddNewSessionParams extends AddNewSessionParams {
  const factory _AddNewSessionParams(
      {final String? title,
      final String? classRoomId,
      final LessonType? lessonType,
      final String? date,
      final String? from,
      final String? to}) = _$AddNewSessionParamsImpl;
  const _AddNewSessionParams._() : super._();

  @override
  String? get title;
  @override
  String? get classRoomId;
  @override
  LessonType? get lessonType;
  @override
  String? get date;
  @override
  String? get from;
  @override
  String? get to;

  /// Create a copy of AddNewSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNewSessionParamsImplCopyWith<_$AddNewSessionParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
