// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_types_absence_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutTypesAbsenceIdResponse _$PutTypesAbsenceIdResponseFromJson(
  Map<String, dynamic> json,
) => PutTypesAbsenceIdResponse(
  data: AbsenceType.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta9.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutTypesAbsenceIdResponseToJson(
  PutTypesAbsenceIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
