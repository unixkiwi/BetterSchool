// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'update_journal_lesson_request_status.dart';

part 'update_journal_lesson_request.g.dart';

@JsonSerializable()
class UpdateJournalLessonRequest {
  const UpdateJournalLessonRequest({
    this.status,
    this.subjectId,
    this.statuses,
    this.teacherIds,
    this.roomIds,
  });
  
  factory UpdateJournalLessonRequest.fromJson(Map<String, Object?> json) => _$UpdateJournalLessonRequestFromJson(json);
  
  final UpdateJournalLessonRequestStatus? status;
  @JsonKey(name: 'subject_id')
  final int? subjectId;
  final List<String>? statuses;
  @JsonKey(name: 'teacher_ids')
  final List<int?>? teacherIds;
  @JsonKey(name: 'room_ids')
  final List<int?>? roomIds;

  Map<String, Object?> toJson() => _$UpdateJournalLessonRequestToJson(this);
}
