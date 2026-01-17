// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_subjects_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutSubjectsIdResponse _$PutSubjectsIdResponseFromJson(
  Map<String, dynamic> json,
) => PutSubjectsIdResponse(
  data: Subject.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta129.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutSubjectsIdResponseToJson(
  PutSubjectsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
