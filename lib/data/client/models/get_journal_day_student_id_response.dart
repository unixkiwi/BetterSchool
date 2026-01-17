// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_day_student.dart';
import 'meta84.dart';

part 'get_journal_day_student_id_response.g.dart';

@JsonSerializable()
class GetJournalDayStudentIdResponse {
  const GetJournalDayStudentIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetJournalDayStudentIdResponse.fromJson(Map<String, Object?> json) => _$GetJournalDayStudentIdResponseFromJson(json);
  
  final JournalDayStudent data;
  final Meta84 meta;

  Map<String, Object?> toJson() => _$GetJournalDayStudentIdResponseToJson(this);
}
