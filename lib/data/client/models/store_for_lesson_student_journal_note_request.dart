// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_for_lesson_student_journal_note_request_for_enum.dart';

part 'store_for_lesson_student_journal_note_request.g.dart';

@JsonSerializable()
class StoreForLessonStudentJournalNoteRequest {
  const StoreForLessonStudentJournalNoteRequest({
    required this.typeId,
    required this.forEnum,
    required this.description,
  });
  
  factory StoreForLessonStudentJournalNoteRequest.fromJson(Map<String, Object?> json) => _$StoreForLessonStudentJournalNoteRequestFromJson(json);
  
  @JsonKey(name: 'type_id')
  final int typeId;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final StoreForLessonStudentJournalNoteRequestForEnum forEnum;
  final String description;

  Map<String, Object?> toJson() => _$StoreForLessonStudentJournalNoteRequestToJson(this);
}
