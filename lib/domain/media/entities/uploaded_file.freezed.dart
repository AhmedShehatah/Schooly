// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploaded_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadedFile {
  int get id => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get storedFileName => throw _privateConstructorUsedError;

  /// Create a copy of UploadedFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadedFileCopyWith<UploadedFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadedFileCopyWith<$Res> {
  factory $UploadedFileCopyWith(
          UploadedFile value, $Res Function(UploadedFile) then) =
      _$UploadedFileCopyWithImpl<$Res, UploadedFile>;
  @useResult
  $Res call({int id, String fileName, String storedFileName});
}

/// @nodoc
class _$UploadedFileCopyWithImpl<$Res, $Val extends UploadedFile>
    implements $UploadedFileCopyWith<$Res> {
  _$UploadedFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadedFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? storedFileName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      storedFileName: null == storedFileName
          ? _value.storedFileName
          : storedFileName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadedFileImplCopyWith<$Res>
    implements $UploadedFileCopyWith<$Res> {
  factory _$$UploadedFileImplCopyWith(
          _$UploadedFileImpl value, $Res Function(_$UploadedFileImpl) then) =
      __$$UploadedFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fileName, String storedFileName});
}

/// @nodoc
class __$$UploadedFileImplCopyWithImpl<$Res>
    extends _$UploadedFileCopyWithImpl<$Res, _$UploadedFileImpl>
    implements _$$UploadedFileImplCopyWith<$Res> {
  __$$UploadedFileImplCopyWithImpl(
      _$UploadedFileImpl _value, $Res Function(_$UploadedFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadedFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? storedFileName = null,
  }) {
    return _then(_$UploadedFileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      storedFileName: null == storedFileName
          ? _value.storedFileName
          : storedFileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadedFileImpl extends _UploadedFile {
  _$UploadedFileImpl(
      {required this.id, required this.fileName, required this.storedFileName})
      : super._();

  @override
  final int id;
  @override
  final String fileName;
  @override
  final String storedFileName;

  @override
  String toString() {
    return 'UploadedFile(id: $id, fileName: $fileName, storedFileName: $storedFileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadedFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.storedFileName, storedFileName) ||
                other.storedFileName == storedFileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fileName, storedFileName);

  /// Create a copy of UploadedFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadedFileImplCopyWith<_$UploadedFileImpl> get copyWith =>
      __$$UploadedFileImplCopyWithImpl<_$UploadedFileImpl>(this, _$identity);
}

abstract class _UploadedFile extends UploadedFile {
  factory _UploadedFile(
      {required final int id,
      required final String fileName,
      required final String storedFileName}) = _$UploadedFileImpl;
  _UploadedFile._() : super._();

  @override
  int get id;
  @override
  String get fileName;
  @override
  String get storedFileName;

  /// Create a copy of UploadedFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadedFileImplCopyWith<_$UploadedFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
