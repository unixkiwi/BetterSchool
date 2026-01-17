// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_absences_absence_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutAbsencesAbsenceResponse _$PutAbsencesAbsenceResponseFromJson(
  Map<String, dynamic> json,
) => PutAbsencesAbsenceResponse(
  data: Absence.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta2.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutAbsencesAbsenceResponseToJson(
  PutAbsencesAbsenceResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
