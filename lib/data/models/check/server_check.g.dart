// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_check.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Server_Check _$$Server_CheckFromJson(Map<String, dynamic> json) =>
    _$Server_Check(
      shopName: json['ShopName'] as String,
      dateTime: json['DateTime'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => ServerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      fnfd: json['FnFd'] as String,
    );

Map<String, dynamic> _$$Server_CheckToJson(_$Server_Check instance) =>
    <String, dynamic>{
      'ShopName': instance.shopName,
      'DateTime': instance.dateTime,
      'items': instance.items,
      'FnFd': instance.fnfd,
    };
