// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_journal_day_student_request.g.dart';

@JsonSerializable()
class StoreJournalDayStudentRequest {
  const StoreJournalDayStudentRequest({
    required this.present,
    required this.studentId,
    required this.journalDayId,
    this.absenceId,
  });
  
  factory StoreJournalDayStudentRequest.fromJson(Map<String, Object?> json) => _$StoreJournalDayStudentRequestFromJson(json);
  
  final bool present;
  @JsonKey(name: 'student_id')
  final int studentId;
  @JsonKey(name: 'absence_id')
  final int? absenceId;
  @JsonKey(name: 'journal_day_id')
  final String journalDayId;

  Map<String, Object?> toJson() => _$StoreJournalDayStudentRequestToJson(this);
}
