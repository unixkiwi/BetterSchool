// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_interval_student_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostIntervalStudentIdRestoreResponse
_$PostIntervalStudentIdRestoreResponseFromJson(Map<String, dynamic> json) =>
    PostIntervalStudentIdRestoreResponse(
      data: Student.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta121.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostIntervalStudentIdRestoreResponseToJson(
  PostIntervalStudentIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
