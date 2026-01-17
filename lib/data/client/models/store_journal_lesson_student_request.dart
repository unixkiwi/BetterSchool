// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_journal_lesson_student_request.g.dart';

@JsonSerializable()
class StoreJournalLessonStudentRequest {
  const StoreJournalLessonStudentRequest({
    required this.present,
    required this.studentId,
    required this.journalLessonId,
    this.tooEarly,
    this.tooLate,
    this.missingHomework,
    this.missingEquipment,
    this.absenceId,
  });
  
  factory StoreJournalLessonStudentRequest.fromJson(Map<String, Object?> json) => _$StoreJournalLessonStudentRequestFromJson(json);
  
  final bool present;
  @JsonKey(name: 'too_early')
  final int? tooEarly;
  @JsonKey(name: 'too_late')
  final int? tooLate;
  @JsonKey(name: 'missing_homework')
  final bool? missingHomework;
  @JsonKey(name: 'missing_equipment')
  final bool? missingEquipment;
  @JsonKey(name: 'student_id')
  final int studentId;
  @JsonKey(name: 'absence_id')
  final int? absenceId;
  @JsonKey(name: 'journal_lesson_id')
  final String journalLessonId;

  Map<String, Object?> toJson() => _$StoreJournalLessonStudentRequestToJson(this);
}
