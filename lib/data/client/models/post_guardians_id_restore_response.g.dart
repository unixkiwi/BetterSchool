// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_guardians_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGuardiansIdRestoreResponse _$PostGuardiansIdRestoreResponseFromJson(
  Map<String, dynamic> json,
) => PostGuardiansIdRestoreResponse(
  data: Guardian.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta55.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostGuardiansIdRestoreResponseToJson(
  PostGuardiansIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
