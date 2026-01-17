// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Teacher _$TeacherFromJson(Map<String, dynamic> json) => Teacher(
  id: (json['id'] as num).toInt(),
  localId: json['local_id'] as String?,
  forename: json['forename'] as String?,
  name: json['name'] as String?,
  role: json['role'] as String?,
  token: json['token'] as String?,
  tokenValidUntil: json['token_valid_until'] as String?,
  deleted: json['deleted'] as bool?,
  grades: (json['grades'] as List<dynamic>?)
      ?.map((e) => Grade.fromJson(e as Map<String, dynamic>))
      .toList(),
  collections: (json['collections'] as List<dynamic>?)
      ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
      .toList(),
  subjects: (json['subjects'] as List<dynamic>?)
      ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
  valid: json['valid'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$TeacherToJson(Teacher instance) => <String, dynamic>{
  'id': instance.id,
  'local_id': instance.localId,
  'forename': instance.forename,
  'name': instance.name,
  'role': instance.role,
  'token': instance.token,
  'token_valid_until': instance.tokenValidUntil,
  'deleted': instance.deleted,
  'grades': instance.grades,
  'collections': instance.collections,
  'subjects': instance.subjects,
  'tags': instance.tags,
  'valid': instance.valid,
  'notes': instance.notes,
};
