// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_guardians_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGuardiansIdResponse _$GetGuardiansIdResponseFromJson(
  Map<String, dynamic> json,
) => GetGuardiansIdResponse(
  data: Guardian.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta51.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetGuardiansIdResponseToJson(
  GetGuardiansIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
