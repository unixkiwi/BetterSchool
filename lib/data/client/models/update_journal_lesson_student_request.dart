// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_journal_lesson_student_request.g.dart';

@JsonSerializable()
class UpdateJournalLessonStudentRequest {
  const UpdateJournalLessonStudentRequest({
    this.present,
    this.tooEarly,
    this.tooLate,
    this.missingHomework,
    this.missingEquipment,
    this.absenceId,
  });
  
  factory UpdateJournalLessonStudentRequest.fromJson(Map<String, Object?> json) => _$UpdateJournalLessonStudentRequestFromJson(json);
  
  final bool? present;
  @JsonKey(name: 'too_early')
  final int? tooEarly;
  @JsonKey(name: 'too_late')
  final int? tooLate;
  @JsonKey(name: 'missing_homework')
  final bool? missingHomework;
  @JsonKey(name: 'missing_equipment')
  final bool? missingEquipment;
  @JsonKey(name: 'absence_id')
  final int? absenceId;

  Map<String, Object?> toJson() => _$UpdateJournalLessonStudentRequestToJson(this);
}
