// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_types_absence_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTypesAbsenceResponse _$PostTypesAbsenceResponseFromJson(
  Map<String, dynamic> json,
) => PostTypesAbsenceResponse(
  data: AbsenceType.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta7.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostTypesAbsenceResponseToJson(
  PostTypesAbsenceResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
