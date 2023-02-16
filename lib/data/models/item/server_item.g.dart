// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerItem _$$_ServerItemFromJson(Map<String, dynamic> json) =>
    _$_ServerItem(
      id: json['ItemId'] as int?,
      name: json['Name'] as String,
      sum: json['Money'] as int,
      paidBy: $enumDecode(_$UsersEnumMap, json['PaidBy']),
      dateInMiliseconds: json['DateTime'] as int?,
      shopName: json['ShopName'] as String?,
      quantity: (json['Quantity'] as num?)?.toDouble(),
      debtStepa: json['Stepan'] as int?,
      debtValentin: json['Valya'] as int?,
      debtDima: json['Dima'] as int?,
      debtChuan: json['Chuan'] as int?,
      debtTham: json['Tham'] as int?,
      isDefined: json['IsDefined'] as int?,
    );

Map<String, dynamic> _$$_ServerItemToJson(_$_ServerItem instance) =>
    <String, dynamic>{
      'ItemId': instance.id,
      'Name': instance.name,
      'Money': instance.sum,
      'PaidBy': _$UsersEnumMap[instance.paidBy]!,
      'DateTime': instance.dateInMiliseconds,
      'ShopName': instance.shopName,
      'Quantity': instance.quantity,
      'Stepan': instance.debtStepa,
      'Valya': instance.debtValentin,
      'Dima': instance.debtDima,
      'Chuan': instance.debtChuan,
      'Tham': instance.debtTham,
      'IsDefined': instance.isDefined,
    };

const _$UsersEnumMap = {
  Users.stepa: 0,
  Users.valentin: 1,
  Users.dima: 2,
  Users.tham: 4,
  Users.trong: 3,
};
