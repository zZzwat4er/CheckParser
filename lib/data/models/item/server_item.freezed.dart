// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerItem _$ServerItemFromJson(Map<String, dynamic> json) {
  return _ServerItem.fromJson(json);
}

/// @nodoc
mixin _$ServerItem {
  @JsonKey(name: 'ItemId')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Money')
  int get sum => throw _privateConstructorUsedError;
  @JsonKey(name: 'PaidBy')
  Users get paidBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'DateTime')
  int? get dateInMiliseconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'ShopName')
  String? get shopName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Quantity')
  double? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'Stepan')
  int? get debtStepa => throw _privateConstructorUsedError;
  @JsonKey(name: 'Valya')
  int? get debtValentin => throw _privateConstructorUsedError;
  @JsonKey(name: 'Dima')
  int? get debtDima => throw _privateConstructorUsedError;
  @JsonKey(name: 'Chuan')
  int? get debtChuan => throw _privateConstructorUsedError;
  @JsonKey(name: 'Tham')
  int? get debtTham => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsDefined')
  int? get isDefined => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerItemCopyWith<ServerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerItemCopyWith<$Res> {
  factory $ServerItemCopyWith(
          ServerItem value, $Res Function(ServerItem) then) =
      _$ServerItemCopyWithImpl<$Res, ServerItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ItemId') int? id,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Money') int sum,
      @JsonKey(name: 'PaidBy') Users paidBy,
      @JsonKey(name: 'DateTime') int? dateInMiliseconds,
      @JsonKey(name: 'ShopName') String? shopName,
      @JsonKey(name: 'Quantity') double? quantity,
      @JsonKey(name: 'Stepan') int? debtStepa,
      @JsonKey(name: 'Valya') int? debtValentin,
      @JsonKey(name: 'Dima') int? debtDima,
      @JsonKey(name: 'Chuan') int? debtChuan,
      @JsonKey(name: 'Tham') int? debtTham,
      @JsonKey(name: 'IsDefined') int? isDefined});
}

/// @nodoc
class _$ServerItemCopyWithImpl<$Res, $Val extends ServerItem>
    implements $ServerItemCopyWith<$Res> {
  _$ServerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? sum = null,
    Object? paidBy = null,
    Object? dateInMiliseconds = freezed,
    Object? shopName = freezed,
    Object? quantity = freezed,
    Object? debtStepa = freezed,
    Object? debtValentin = freezed,
    Object? debtDima = freezed,
    Object? debtChuan = freezed,
    Object? debtTham = freezed,
    Object? isDefined = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      paidBy: null == paidBy
          ? _value.paidBy
          : paidBy // ignore: cast_nullable_to_non_nullable
              as Users,
      dateInMiliseconds: freezed == dateInMiliseconds
          ? _value.dateInMiliseconds
          : dateInMiliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      shopName: freezed == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      debtStepa: freezed == debtStepa
          ? _value.debtStepa
          : debtStepa // ignore: cast_nullable_to_non_nullable
              as int?,
      debtValentin: freezed == debtValentin
          ? _value.debtValentin
          : debtValentin // ignore: cast_nullable_to_non_nullable
              as int?,
      debtDima: freezed == debtDima
          ? _value.debtDima
          : debtDima // ignore: cast_nullable_to_non_nullable
              as int?,
      debtChuan: freezed == debtChuan
          ? _value.debtChuan
          : debtChuan // ignore: cast_nullable_to_non_nullable
              as int?,
      debtTham: freezed == debtTham
          ? _value.debtTham
          : debtTham // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefined: freezed == isDefined
          ? _value.isDefined
          : isDefined // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerItemCopyWith<$Res>
    implements $ServerItemCopyWith<$Res> {
  factory _$$_ServerItemCopyWith(
          _$_ServerItem value, $Res Function(_$_ServerItem) then) =
      __$$_ServerItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ItemId') int? id,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Money') int sum,
      @JsonKey(name: 'PaidBy') Users paidBy,
      @JsonKey(name: 'DateTime') int? dateInMiliseconds,
      @JsonKey(name: 'ShopName') String? shopName,
      @JsonKey(name: 'Quantity') double? quantity,
      @JsonKey(name: 'Stepan') int? debtStepa,
      @JsonKey(name: 'Valya') int? debtValentin,
      @JsonKey(name: 'Dima') int? debtDima,
      @JsonKey(name: 'Chuan') int? debtChuan,
      @JsonKey(name: 'Tham') int? debtTham,
      @JsonKey(name: 'IsDefined') int? isDefined});
}

/// @nodoc
class __$$_ServerItemCopyWithImpl<$Res>
    extends _$ServerItemCopyWithImpl<$Res, _$_ServerItem>
    implements _$$_ServerItemCopyWith<$Res> {
  __$$_ServerItemCopyWithImpl(
      _$_ServerItem _value, $Res Function(_$_ServerItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? sum = null,
    Object? paidBy = null,
    Object? dateInMiliseconds = freezed,
    Object? shopName = freezed,
    Object? quantity = freezed,
    Object? debtStepa = freezed,
    Object? debtValentin = freezed,
    Object? debtDima = freezed,
    Object? debtChuan = freezed,
    Object? debtTham = freezed,
    Object? isDefined = freezed,
  }) {
    return _then(_$_ServerItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      paidBy: null == paidBy
          ? _value.paidBy
          : paidBy // ignore: cast_nullable_to_non_nullable
              as Users,
      dateInMiliseconds: freezed == dateInMiliseconds
          ? _value.dateInMiliseconds
          : dateInMiliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      shopName: freezed == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      debtStepa: freezed == debtStepa
          ? _value.debtStepa
          : debtStepa // ignore: cast_nullable_to_non_nullable
              as int?,
      debtValentin: freezed == debtValentin
          ? _value.debtValentin
          : debtValentin // ignore: cast_nullable_to_non_nullable
              as int?,
      debtDima: freezed == debtDima
          ? _value.debtDima
          : debtDima // ignore: cast_nullable_to_non_nullable
              as int?,
      debtChuan: freezed == debtChuan
          ? _value.debtChuan
          : debtChuan // ignore: cast_nullable_to_non_nullable
              as int?,
      debtTham: freezed == debtTham
          ? _value.debtTham
          : debtTham // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefined: freezed == isDefined
          ? _value.isDefined
          : isDefined // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerItem extends _ServerItem {
  const _$_ServerItem(
      {@JsonKey(name: 'ItemId') this.id,
      @JsonKey(name: 'Name') required this.name,
      @JsonKey(name: 'Money') required this.sum,
      @JsonKey(name: 'PaidBy') required this.paidBy,
      @JsonKey(name: 'DateTime') this.dateInMiliseconds,
      @JsonKey(name: 'ShopName') this.shopName,
      @JsonKey(name: 'Quantity') this.quantity,
      @JsonKey(name: 'Stepan') this.debtStepa,
      @JsonKey(name: 'Valya') this.debtValentin,
      @JsonKey(name: 'Dima') this.debtDima,
      @JsonKey(name: 'Chuan') this.debtChuan,
      @JsonKey(name: 'Tham') this.debtTham,
      @JsonKey(name: 'IsDefined') this.isDefined})
      : super._();

  factory _$_ServerItem.fromJson(Map<String, dynamic> json) =>
      _$$_ServerItemFromJson(json);

  @override
  @JsonKey(name: 'ItemId')
  final int? id;
  @override
  @JsonKey(name: 'Name')
  final String name;
  @override
  @JsonKey(name: 'Money')
  final int sum;
  @override
  @JsonKey(name: 'PaidBy')
  final Users paidBy;
  @override
  @JsonKey(name: 'DateTime')
  final int? dateInMiliseconds;
  @override
  @JsonKey(name: 'ShopName')
  final String? shopName;
  @override
  @JsonKey(name: 'Quantity')
  final double? quantity;
  @override
  @JsonKey(name: 'Stepan')
  final int? debtStepa;
  @override
  @JsonKey(name: 'Valya')
  final int? debtValentin;
  @override
  @JsonKey(name: 'Dima')
  final int? debtDima;
  @override
  @JsonKey(name: 'Chuan')
  final int? debtChuan;
  @override
  @JsonKey(name: 'Tham')
  final int? debtTham;
  @override
  @JsonKey(name: 'IsDefined')
  final int? isDefined;

  @override
  String toString() {
    return 'ServerItem(id: $id, name: $name, sum: $sum, paidBy: $paidBy, dateInMiliseconds: $dateInMiliseconds, shopName: $shopName, quantity: $quantity, debtStepa: $debtStepa, debtValentin: $debtValentin, debtDima: $debtDima, debtChuan: $debtChuan, debtTham: $debtTham, isDefined: $isDefined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.paidBy, paidBy) || other.paidBy == paidBy) &&
            (identical(other.dateInMiliseconds, dateInMiliseconds) ||
                other.dateInMiliseconds == dateInMiliseconds) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.debtStepa, debtStepa) ||
                other.debtStepa == debtStepa) &&
            (identical(other.debtValentin, debtValentin) ||
                other.debtValentin == debtValentin) &&
            (identical(other.debtDima, debtDima) ||
                other.debtDima == debtDima) &&
            (identical(other.debtChuan, debtChuan) ||
                other.debtChuan == debtChuan) &&
            (identical(other.debtTham, debtTham) ||
                other.debtTham == debtTham) &&
            (identical(other.isDefined, isDefined) ||
                other.isDefined == isDefined));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      sum,
      paidBy,
      dateInMiliseconds,
      shopName,
      quantity,
      debtStepa,
      debtValentin,
      debtDima,
      debtChuan,
      debtTham,
      isDefined);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerItemCopyWith<_$_ServerItem> get copyWith =>
      __$$_ServerItemCopyWithImpl<_$_ServerItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerItemToJson(
      this,
    );
  }
}

abstract class _ServerItem extends ServerItem {
  const factory _ServerItem(
      {@JsonKey(name: 'ItemId') final int? id,
      @JsonKey(name: 'Name') required final String name,
      @JsonKey(name: 'Money') required final int sum,
      @JsonKey(name: 'PaidBy') required final Users paidBy,
      @JsonKey(name: 'DateTime') final int? dateInMiliseconds,
      @JsonKey(name: 'ShopName') final String? shopName,
      @JsonKey(name: 'Quantity') final double? quantity,
      @JsonKey(name: 'Stepan') final int? debtStepa,
      @JsonKey(name: 'Valya') final int? debtValentin,
      @JsonKey(name: 'Dima') final int? debtDima,
      @JsonKey(name: 'Chuan') final int? debtChuan,
      @JsonKey(name: 'Tham') final int? debtTham,
      @JsonKey(name: 'IsDefined') final int? isDefined}) = _$_ServerItem;
  const _ServerItem._() : super._();

  factory _ServerItem.fromJson(Map<String, dynamic> json) =
      _$_ServerItem.fromJson;

  @override
  @JsonKey(name: 'ItemId')
  int? get id;
  @override
  @JsonKey(name: 'Name')
  String get name;
  @override
  @JsonKey(name: 'Money')
  int get sum;
  @override
  @JsonKey(name: 'PaidBy')
  Users get paidBy;
  @override
  @JsonKey(name: 'DateTime')
  int? get dateInMiliseconds;
  @override
  @JsonKey(name: 'ShopName')
  String? get shopName;
  @override
  @JsonKey(name: 'Quantity')
  double? get quantity;
  @override
  @JsonKey(name: 'Stepan')
  int? get debtStepa;
  @override
  @JsonKey(name: 'Valya')
  int? get debtValentin;
  @override
  @JsonKey(name: 'Dima')
  int? get debtDima;
  @override
  @JsonKey(name: 'Chuan')
  int? get debtChuan;
  @override
  @JsonKey(name: 'Tham')
  int? get debtTham;
  @override
  @JsonKey(name: 'IsDefined')
  int? get isDefined;
  @override
  @JsonKey(ignore: true)
  _$$_ServerItemCopyWith<_$_ServerItem> get copyWith =>
      throw _privateConstructorUsedError;
}
