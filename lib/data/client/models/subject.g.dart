// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subject _$SubjectFromJson(Map<String, dynamic> json) => Subject(
  id: (json['id'] as num).toInt(),
  localId: json['local_id'] as String,
  name: json['name'] as String,
  forValue: json['for'] as String,
  collections: (json['collections'] as List<dynamic>?)
      ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
      .toList(),
  groups: (json['groups'] as List<dynamic>?)
      ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
      .toList(),
  finalgrades: (json['finalgrades'] as List<dynamic>?)
      ?.map((e) => Finalgrade.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
  teachers: (json['teachers'] as List<dynamic>?)
      ?.map((e) => Teacher.fromJson(e as Map<String, dynamic>))
      .toList(),
  collectionTypeOrder: json['collection_type_order'] as String?,
  sortByMainGroup: json['sort_by_main_group'] as String?,
  sortByGender: json['sort_by_gender'] as String?,
  collectionLabel: json['collection_label'] as String?,
  groupId: json['group_id'] as String?,
);

Map<String, dynamic> _$SubjectToJson(Subject instance) => <String, dynamic>{
  'id': instance.id,
  'local_id': instance.localId,
  'name': instance.name,
  'for': instance.forValue,
  'collections': instance.collections,
  'groups': instance.groups,
  'finalgrades': instance.finalgrades,
  'tags': instance.tags,
  'teachers': instance.teachers,
  'collection_type_order': instance.collectionTypeOrder,
  'sort_by_main_group': instance.sortByMainGroup,
  'sort_by_gender': instance.sortByGender,
  'collection_label': instance.collectionLabel,
  'group_id': instance.groupId,
};
