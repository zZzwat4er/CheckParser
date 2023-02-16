// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerCheck _$ServerCheckFromJson(Map<String, dynamic> json) {
  return Server_Check.fromJson(json);
}

/// @nodoc
mixin _$ServerCheck {
  @JsonKey(name: 'ShopName')
  String get shopName => throw _privateConstructorUsedError;
  @JsonKey(name: 'DateTime')
  int get dateTime => throw _privateConstructorUsedError;
  List<ServerItem> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'FnFd')
  String get fnfd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerCheckCopyWith<ServerCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCheckCopyWith<$Res> {
  factory $ServerCheckCopyWith(
          ServerCheck value, $Res Function(ServerCheck) then) =
      _$ServerCheckCopyWithImpl<$Res, ServerCheck>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ShopName') String shopName,
      @JsonKey(name: 'DateTime') int dateTime,
      List<ServerItem> items,
      @JsonKey(name: 'FnFd') String fnfd});
}

/// @nodoc
class _$ServerCheckCopyWithImpl<$Res, $Val extends ServerCheck>
    implements $ServerCheckCopyWith<$Res> {
  _$ServerCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopName = null,
    Object? dateTime = null,
    Object? items = null,
    Object? fnfd = null,
  }) {
    return _then(_value.copyWith(
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ServerItem>,
      fnfd: null == fnfd
          ? _value.fnfd
          : fnfd // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Server_CheckCopyWith<$Res>
    implements $ServerCheckCopyWith<$Res> {
  factory _$$Server_CheckCopyWith(
          _$Server_Check value, $Res Function(_$Server_Check) then) =
      __$$Server_CheckCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ShopName') String shopName,
      @JsonKey(name: 'DateTime') int dateTime,
      List<ServerItem> items,
      @JsonKey(name: 'FnFd') String fnfd});
}

/// @nodoc
class __$$Server_CheckCopyWithImpl<$Res>
    extends _$ServerCheckCopyWithImpl<$Res, _$Server_Check>
    implements _$$Server_CheckCopyWith<$Res> {
  __$$Server_CheckCopyWithImpl(
      _$Server_Check _value, $Res Function(_$Server_Check) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopName = null,
    Object? dateTime = null,
    Object? items = null,
    Object? fnfd = null,
  }) {
    return _then(_$Server_Check(
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ServerItem>,
      fnfd: null == fnfd
          ? _value.fnfd
          : fnfd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Server_Check implements Server_Check {
  const _$Server_Check(
      {@JsonKey(name: 'ShopName') required this.shopName,
      @JsonKey(name: 'DateTime') required this.dateTime,
      required final List<ServerItem> items,
      @JsonKey(name: 'FnFd') required this.fnfd})
      : _items = items;

  factory _$Server_Check.fromJson(Map<String, dynamic> json) =>
      _$$Server_CheckFromJson(json);

  @override
  @JsonKey(name: 'ShopName')
  final String shopName;
  @override
  @JsonKey(name: 'DateTime')
  final int dateTime;
  final List<ServerItem> _items;
  @override
  List<ServerItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'FnFd')
  final String fnfd;

  @override
  String toString() {
    return 'ServerCheck(shopName: $shopName, dateTime: $dateTime, items: $items, fnfd: $fnfd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Server_Check &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.fnfd, fnfd) || other.fnfd == fnfd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shopName, dateTime,
      const DeepCollectionEquality().hash(_items), fnfd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Server_CheckCopyWith<_$Server_Check> get copyWith =>
      __$$Server_CheckCopyWithImpl<_$Server_Check>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Server_CheckToJson(
      this,
    );
  }
}

abstract class Server_Check implements ServerCheck {
  const factory Server_Check(
      {@JsonKey(name: 'ShopName') required final String shopName,
      @JsonKey(name: 'DateTime') required final int dateTime,
      required final List<ServerItem> items,
      @JsonKey(name: 'FnFd') required final String fnfd}) = _$Server_Check;

  factory Server_Check.fromJson(Map<String, dynamic> json) =
      _$Server_Check.fromJson;

  @override
  @JsonKey(name: 'ShopName')
  String get shopName;
  @override
  @JsonKey(name: 'DateTime')
  int get dateTime;
  @override
  List<ServerItem> get items;
  @override
  @JsonKey(name: 'FnFd')
  String get fnfd;
  @override
  @JsonKey(ignore: true)
  _$$Server_CheckCopyWith<_$Server_Check> get copyWith =>
      throw _privateConstructorUsedError;
}
