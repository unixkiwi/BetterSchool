// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence.dart';
import 'meta2.dart';

part 'put_absences_absence_response.g.dart';

@JsonSerializable()
class PutAbsencesAbsenceResponse {
  const PutAbsencesAbsenceResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutAbsencesAbsenceResponse.fromJson(Map<String, Object?> json) => _$PutAbsencesAbsenceResponseFromJson(json);
  
  final Absence data;
  final Meta2 meta;

  Map<String, Object?> toJson() => _$PutAbsencesAbsenceResponseToJson(this);
}
