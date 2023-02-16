// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerResponce _$$_ServerResponceFromJson(Map<String, dynamic> json) =>
    _$_ServerResponce(
      success: json['success'] as bool,
      exception: json['exception'] as String?,
    );

Map<String, dynamic> _$$_ServerResponceToJson(_$_ServerResponce instance) =>
    <String, dynamic>{
      'success': instance.success,
      'exception': instance.exception,
    };
