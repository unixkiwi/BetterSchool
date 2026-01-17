// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_favorite_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateFavoriteRequest _$UpdateFavoriteRequestFromJson(
  Map<String, dynamic> json,
) => UpdateFavoriteRequest(
  studentId: (json['student_id'] as num?)?.toInt(),
  subjectId: (json['subject_id'] as num?)?.toInt(),
  groupId: (json['group_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$UpdateFavoriteRequestToJson(
  UpdateFavoriteRequest instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'subject_id': instance.subjectId,
  'group_id': instance.groupId,
};
