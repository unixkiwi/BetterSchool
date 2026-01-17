// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_favorite_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreFavoriteRequest _$StoreFavoriteRequestFromJson(
  Map<String, dynamic> json,
) => StoreFavoriteRequest(
  studentId: (json['student_id'] as num?)?.toInt(),
  subjectId: (json['subject_id'] as num?)?.toInt(),
  groupId: (json['group_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$StoreFavoriteRequestToJson(
  StoreFavoriteRequest instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'subject_id': instance.subjectId,
  'group_id': instance.groupId,
};
