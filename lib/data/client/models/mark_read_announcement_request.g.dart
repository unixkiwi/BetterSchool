// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_read_announcement_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkReadAnnouncementRequest _$MarkReadAnnouncementRequestFromJson(
  Map<String, dynamic> json,
) => MarkReadAnnouncementRequest(
  guardianId: (json['guardian_id'] as num?)?.toInt(),
  studentId: (json['student_id'] as num?)?.toInt(),
  readAt: json['read_at'] == null
      ? null
      : DateTime.parse(json['read_at'] as String),
);

Map<String, dynamic> _$MarkReadAnnouncementRequestToJson(
  MarkReadAnnouncementRequest instance,
) => <String, dynamic>{
  'guardian_id': instance.guardianId,
  'student_id': instance.studentId,
  'read_at': instance.readAt?.toIso8601String(),
};
