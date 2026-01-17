// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_guardians_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutGuardiansIdResponse _$PutGuardiansIdResponseFromJson(
  Map<String, dynamic> json,
) => PutGuardiansIdResponse(
  data: Guardian.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta52.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutGuardiansIdResponseToJson(
  PutGuardiansIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
