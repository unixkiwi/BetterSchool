// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'note.dart';
import 'store_journal_lesson_request_for_enum.dart';
import 'store_journal_lesson_request_status.dart';

part 'store_journal_lesson_request.g.dart';

@JsonSerializable()
class StoreJournalLessonRequest {
  const StoreJournalLessonRequest({
    required this.nr,
    required this.groupId,
    this.dayId,
    this.journalDayId,
    this.status,
    this.subjectId,
    this.statuses,
    this.description,
    this.forEnum,
    this.typeId,
    this.teacherIds,
    this.roomIds,
    this.note,
  });
  
  factory StoreJournalLessonRequest.fromJson(Map<String, Object?> json) => _$StoreJournalLessonRequestFromJson(json);
  
  final String nr;
  @JsonKey(name: 'day_id')
  final DateTime? dayId;
  @JsonKey(name: 'journal_day_id')
  final DateTime? journalDayId;
  final StoreJournalLessonRequestStatus? status;
  @JsonKey(name: 'group_id')
  final int groupId;
  @JsonKey(name: 'subject_id')
  final int? subjectId;
  final List<String>? statuses;

  /// deprecated
  final String? description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final StoreJournalLessonRequestForEnum? forEnum;
  @JsonKey(name: 'type_id')
  final int? typeId;
  @JsonKey(name: 'teacher_ids')
  final List<int?>? teacherIds;
  @JsonKey(name: 'room_ids')
  final List<int?>? roomIds;
  final Note? note;

  Map<String, Object?> toJson() => _$StoreJournalLessonRequestToJson(this);
}
