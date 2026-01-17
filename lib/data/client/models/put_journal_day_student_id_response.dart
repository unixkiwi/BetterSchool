// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_day_student.dart';
import 'meta83.dart';

part 'put_journal_day_student_id_response.g.dart';

@JsonSerializable()
class PutJournalDayStudentIdResponse {
  const PutJournalDayStudentIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutJournalDayStudentIdResponse.fromJson(Map<String, Object?> json) => _$PutJournalDayStudentIdResponseFromJson(json);
  
  final JournalDayStudent data;
  final Meta83 meta;

  Map<String, Object?> toJson() => _$PutJournalDayStudentIdResponseToJson(this);
}
