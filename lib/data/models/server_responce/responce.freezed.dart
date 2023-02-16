// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerResponce _$ServerResponceFromJson(Map<String, dynamic> json) {
  return _ServerResponce.fromJson(json);
}

/// @nodoc
mixin _$ServerResponce {
  bool get success => throw _privateConstructorUsedError;
  String? get exception => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerResponceCopyWith<ServerResponce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerResponceCopyWith<$Res> {
  factory $ServerResponceCopyWith(
          ServerResponce value, $Res Function(ServerResponce) then) =
      _$ServerResponceCopyWithImpl<$Res, ServerResponce>;
  @useResult
  $Res call({bool success, String? exception});
}

/// @nodoc
class _$ServerResponceCopyWithImpl<$Res, $Val extends ServerResponce>
    implements $ServerResponceCopyWith<$Res> {
  _$ServerResponceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerResponceCopyWith<$Res>
    implements $ServerResponceCopyWith<$Res> {
  factory _$$_ServerResponceCopyWith(
          _$_ServerResponce value, $Res Function(_$_ServerResponce) then) =
      __$$_ServerResponceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? exception});
}

/// @nodoc
class __$$_ServerResponceCopyWithImpl<$Res>
    extends _$ServerResponceCopyWithImpl<$Res, _$_ServerResponce>
    implements _$$_ServerResponceCopyWith<$Res> {
  __$$_ServerResponceCopyWithImpl(
      _$_ServerResponce _value, $Res Function(_$_ServerResponce) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? exception = freezed,
  }) {
    return _then(_$_ServerResponce(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerResponce implements _ServerResponce {
  const _$_ServerResponce({required this.success, this.exception});

  factory _$_ServerResponce.fromJson(Map<String, dynamic> json) =>
      _$$_ServerResponceFromJson(json);

  @override
  final bool success;
  @override
  final String? exception;

  @override
  String toString() {
    return 'ServerResponce(success: $success, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerResponce &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerResponceCopyWith<_$_ServerResponce> get copyWith =>
      __$$_ServerResponceCopyWithImpl<_$_ServerResponce>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerResponceToJson(
      this,
    );
  }
}

abstract class _ServerResponce implements ServerResponce {
  const factory _ServerResponce(
      {required final bool success,
      final String? exception}) = _$_ServerResponce;

  factory _ServerResponce.fromJson(Map<String, dynamic> json) =
      _$_ServerResponce.fromJson;

  @override
  bool get success;
  @override
  String? get exception;
  @override
  @JsonKey(ignore: true)
  _$$_ServerResponceCopyWith<_$_ServerResponce> get copyWith =>
      throw _privateConstructorUsedError;
}
