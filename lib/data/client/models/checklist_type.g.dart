// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChecklistType _$ChecklistTypeFromJson(Map<String, dynamic> json) =>
    ChecklistType(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      checklists: (json['checklists'] as List<dynamic>?)
          ?.map((e) => Checklist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChecklistTypeToJson(ChecklistType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'checklists': instance.checklists,
    };
