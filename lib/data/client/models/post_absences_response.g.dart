// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_absences_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostAbsencesResponse _$PostAbsencesResponseFromJson(
  Map<String, dynamic> json,
) => PostAbsencesResponse(
  data: Absence.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostAbsencesResponseToJson(
  PostAbsencesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
