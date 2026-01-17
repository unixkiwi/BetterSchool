// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_guardians_id_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGuardiansIdTokenResponse _$GetGuardiansIdTokenResponseFromJson(
  Map<String, dynamic> json,
) => GetGuardiansIdTokenResponse(
  data: Guardian.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta53.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetGuardiansIdTokenResponseToJson(
  GetGuardiansIdTokenResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
