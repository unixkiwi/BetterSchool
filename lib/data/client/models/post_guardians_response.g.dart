// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_guardians_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGuardiansResponse _$PostGuardiansResponseFromJson(
  Map<String, dynamic> json,
) => PostGuardiansResponse(
  data: Guardian.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta50.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostGuardiansResponseToJson(
  PostGuardiansResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
