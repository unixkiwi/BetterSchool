// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subjects_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubjectsIdResponse _$GetSubjectsIdResponseFromJson(
  Map<String, dynamic> json,
) => GetSubjectsIdResponse(
  data: Subject.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta128.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetSubjectsIdResponseToJson(
  GetSubjectsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
