// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence.dart';
import 'teacher.dart';

part 'absence_verification.g.dart';

@JsonSerializable()
class AbsenceVerification {
  const AbsenceVerification({
    required this.id,
    required this.confirmed,
    required this.localId,
    required this.recordedAt,
    this.note,
    this.teacher,
    this.absence,
  });
  
  factory AbsenceVerification.fromJson(Map<String, Object?> json) => _$AbsenceVerificationFromJson(json);
  
  final int id;
  final bool confirmed;
  @JsonKey(name: 'local_id')
  final String? localId;
  final String? note;
  @JsonKey(name: 'recorded_at')
  final String? recordedAt;
  final Teacher? teacher;
  final Absence? absence;

  Map<String, Object?> toJson() => _$AbsenceVerificationToJson(this);
}
