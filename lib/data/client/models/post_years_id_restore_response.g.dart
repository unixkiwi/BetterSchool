// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_years_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostYearsIdRestoreResponse _$PostYearsIdRestoreResponseFromJson(
  Map<String, dynamic> json,
) => PostYearsIdRestoreResponse(
  data: Year.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta162.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostYearsIdRestoreResponseToJson(
  PostYearsIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
