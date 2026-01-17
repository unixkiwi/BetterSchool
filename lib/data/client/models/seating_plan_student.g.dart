// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seating_plan_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatingPlanStudent _$SeatingPlanStudentFromJson(Map<String, dynamic> json) =>
    SeatingPlanStudent(
      id: json['id'] as String,
      studentId: (json['student_id'] as num).toInt(),
      forename: json['forename'] as String,
      nickname: json['nickname'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
      changedRecently: json['changed_recently'] as bool,
      metaGroups: (json['meta_groups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SeatingPlanStudentToJson(SeatingPlanStudent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'forename': instance.forename,
      'nickname': instance.nickname,
      'name': instance.name,
      'gender': instance.gender,
      'x': instance.x,
      'y': instance.y,
      'changed_recently': instance.changedRecently,
      'meta_groups': instance.metaGroups,
      'tags': instance.tags,
    };
