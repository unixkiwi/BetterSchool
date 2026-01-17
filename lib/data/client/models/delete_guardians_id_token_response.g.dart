// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_guardians_id_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteGuardiansIdTokenResponse _$DeleteGuardiansIdTokenResponseFromJson(
  Map<String, dynamic> json,
) => DeleteGuardiansIdTokenResponse(
  data: Guardian.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta54.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DeleteGuardiansIdTokenResponseToJson(
  DeleteGuardiansIdTokenResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
