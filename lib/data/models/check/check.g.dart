// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Check _$$_CheckFromJson(Map<String, dynamic> json) => _$_Check(
      user: json['user'] as String,
      dateTime: json['dateTime'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalSum: json['totalSum'] as int,
      fiscalDriveNumber: json['fiscalDriveNumber'] as String,
      fiscalDocumentNumber: json['fiscalDocumentNumber'] as int,
      fiscalSign: json['fiscalSign'] as int,
      PaidBy: $enumDecodeNullable(_$UsersEnumMap, json['PaidBy']),
      retailPlaceAddress: json['retailPlaceAddress'] as String?,
      userInn: json['userInn'] as String?,
      requestNumber: json['requestNumber'] as int?,
      shiftNumber: json['shiftNumber'] as int?,
      operationType: json['operationType'] as int?,
      cashTotalSum: json['cashTotalSum'] as int?,
      ecashTotalSum: json['ecashTotalSum'] as int?,
      kktRegId: json['kktRegId'] as String?,
      ndsNo: json['ndsNo'] as int?,
      code: json['code'] as int?,
      fiscalDocumentFormatVer: json['fiscalDocumentFormatVer'] as int?,
      machineNumber: json['machineNumber'] as String?,
      retailPlace: json['retailPlace'] as String?,
      buyerPhoneOrAddress: json['buyerPhoneOrAddress'] as String?,
      prepaidSum: json['prepaidSum'] as int?,
      creditSum: json['creditSum'] as int?,
      provisionSum: json['provisionSum'] as int?,
      sellerAddress: json['sellerAddress'] as String?,
      taxationType: json['taxationType'] as int?,
      localDateTime: json['localDateTime'] as String?,
    );

Map<String, dynamic> _$$_CheckToJson(_$_Check instance) => <String, dynamic>{
      'user': instance.user,
      'dateTime': instance.dateTime,
      'items': instance.items,
      'totalSum': instance.totalSum,
      'fiscalDriveNumber': instance.fiscalDriveNumber,
      'fiscalDocumentNumber': instance.fiscalDocumentNumber,
      'fiscalSign': instance.fiscalSign,
      'PaidBy': _$UsersEnumMap[instance.PaidBy],
      'retailPlaceAddress': instance.retailPlaceAddress,
      'userInn': instance.userInn,
      'requestNumber': instance.requestNumber,
      'shiftNumber': instance.shiftNumber,
      'operationType': instance.operationType,
      'cashTotalSum': instance.cashTotalSum,
      'ecashTotalSum': instance.ecashTotalSum,
      'kktRegId': instance.kktRegId,
      'ndsNo': instance.ndsNo,
      'code': instance.code,
      'fiscalDocumentFormatVer': instance.fiscalDocumentFormatVer,
      'machineNumber': instance.machineNumber,
      'retailPlace': instance.retailPlace,
      'buyerPhoneOrAddress': instance.buyerPhoneOrAddress,
      'prepaidSum': instance.prepaidSum,
      'creditSum': instance.creditSum,
      'provisionSum': instance.provisionSum,
      'sellerAddress': instance.sellerAddress,
      'taxationType': instance.taxationType,
      'localDateTime': instance.localDateTime,
    };

const _$UsersEnumMap = {
  Users.stepa: 0,
  Users.valentin: 1,
  Users.dima: 2,
  Users.tham: 4,
  Users.trong: 3,
};
