// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_absences_absence_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAbsencesAbsenceResponse _$GetAbsencesAbsenceResponseFromJson(
  Map<String, dynamic> json,
) => GetAbsencesAbsenceResponse(
  data: Absence.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta3.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetAbsencesAbsenceResponseToJson(
  GetAbsencesAbsenceResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
