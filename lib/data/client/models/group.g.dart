// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) => Group(
  id: (json['id'] as num).toInt(),
  localId: json['local_id'] as String?,
  name: json['name'] as String,
  meta: (json['meta'] as num).toInt(),
  levelId: (json['level_id'] as num?)?.toInt(),
  yearId: (json['year_id'] as num).toInt(),
  custom: json['custom'] as String?,
  level: json['level'] == null
      ? null
      : Level.fromJson(json['level'] as Map<String, dynamic>),
  levels: (json['levels'] as List<dynamic>?)
      ?.map((e) => Level.fromJson(e as Map<String, dynamic>))
      .toList(),
  subjects: (json['subjects'] as List<dynamic>?)
      ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
      .toList(),
  collections: (json['collections'] as List<dynamic>?)
      ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
      .toList(),
  teachers: (json['teachers'] as List<dynamic>?)
      ?.map((e) => Teacher.fromJson(e as Map<String, dynamic>))
      .toList(),
  students: (json['students'] as List<dynamic>?)
      ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
  'id': instance.id,
  'local_id': instance.localId,
  'name': instance.name,
  'meta': instance.meta,
  'custom': instance.custom,
  'level_id': instance.levelId,
  'year_id': instance.yearId,
  'level': instance.level,
  'levels': instance.levels,
  'subjects': instance.subjects,
  'collections': instance.collections,
  'teachers': instance.teachers,
  'students': instance.students,
  'tags': instance.tags,
};
