// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'mark_read_announcement_request.g.dart';

@JsonSerializable()
class MarkReadAnnouncementRequest {
  const MarkReadAnnouncementRequest({
    this.guardianId,
    this.studentId,
    this.readAt,
  });
  
  factory MarkReadAnnouncementRequest.fromJson(Map<String, Object?> json) => _$MarkReadAnnouncementRequestFromJson(json);
  
  @JsonKey(name: 'guardian_id')
  final int? guardianId;
  @JsonKey(name: 'student_id')
  final int? studentId;
  @JsonKey(name: 'read_at')
  final DateTime? readAt;

  Map<String, Object?> toJson() => _$MarkReadAnnouncementRequestToJson(this);
}
