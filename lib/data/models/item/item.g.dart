// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      name: json['name'] as String,
      sum: json['sum'] as int,
      price: json['price'] as int?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      paymentType: json['paymentType'] as int?,
      nds: json['nds'] as int?,
      ndsSum: json['ndsSum'] as int?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'name': instance.name,
      'sum': instance.sum,
      'price': instance.price,
      'quantity': instance.quantity,
      'paymentType': instance.paymentType,
      'nds': instance.nds,
      'ndsSum': instance.ndsSum,
    };
