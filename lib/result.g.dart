// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessImpl _$$SuccessImplFromJson(Map<String, dynamic> json) =>
    _$SuccessImpl(
      json['data'],
      isBinary: json['isBinary'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessImplToJson(_$SuccessImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'isBinary': instance.isBinary,
      'runtimeType': instance.$type,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      (json['code'] as num).toInt(),
      json['error'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'runtimeType': instance.$type,
    };
