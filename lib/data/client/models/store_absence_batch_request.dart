// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'verification.dart';

part 'store_absence_batch_request.g.dart';

@JsonSerializable()
class StoreAbsenceBatchRequest {
  const StoreAbsenceBatchRequest({
    required this.from,
    required this.to,
    required this.typeId,
    required this.studentIds,
    this.noteTeacher,
    this.recordedAt,
    this.lessonIds,
    this.subjectIds,
    this.verification,
  });
  
  factory StoreAbsenceBatchRequest.fromJson(Map<String, Object?> json) => _$StoreAbsenceBatchRequestFromJson(json);
  
  final DateTime from;
  final DateTime to;
  @JsonKey(name: 'type_id')
  final int typeId;
  @JsonKey(name: 'student_ids')
  final List<String> studentIds;
  @JsonKey(name: 'note_teacher')
  final String? noteTeacher;
  @JsonKey(name: 'recorded_at')
  final DateTime? recordedAt;
  @JsonKey(name: 'lesson_ids')
  final List<String>? lessonIds;
  @JsonKey(name: 'subject_ids')
  final List<String>? subjectIds;
  final Verification? verification;

  Map<String, Object?> toJson() => _$StoreAbsenceBatchRequestToJson(this);
}
