// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_teacher_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTeacherRequest _$UpdateTeacherRequestFromJson(
  Map<String, dynamic> json,
) => UpdateTeacherRequest(
  name: json['name'] as String,
  localId: json['local_id'] as String,
  forename: json['forename'] as String?,
  role: json['role'] == null
      ? null
      : UpdateTeacherRequestRole.fromJson(json['role'] as String?),
  deleted: json['deleted'] as bool?,
  tagIds: (json['tag_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$UpdateTeacherRequestToJson(
  UpdateTeacherRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'forename': instance.forename,
  'role': _$UpdateTeacherRequestRoleEnumMap[instance.role],
  'deleted': instance.deleted,
  'local_id': instance.localId,
  'tag_ids': instance.tagIds,
};

const _$UpdateTeacherRequestRoleEnumMap = {
  UpdateTeacherRequestRole.teacher: 'teacher',
  UpdateTeacherRequestRole.management: 'management',
  UpdateTeacherRequestRole.$unknown: r'$unknown',
};
