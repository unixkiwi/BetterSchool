// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence.dart';
import 'meta3.dart';

part 'get_absences_absence_response.g.dart';

@JsonSerializable()
class GetAbsencesAbsenceResponse {
  const GetAbsencesAbsenceResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetAbsencesAbsenceResponse.fromJson(Map<String, Object?> json) => _$GetAbsencesAbsenceResponseFromJson(json);
  
  final Absence data;
  final Meta3 meta;

  Map<String, Object?> toJson() => _$GetAbsencesAbsenceResponseToJson(this);
}
