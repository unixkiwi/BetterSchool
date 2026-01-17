// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChecklistStudent _$ChecklistStudentFromJson(Map<String, dynamic> json) =>
    ChecklistStudent(
      id: json['id'] as String,
      studentId: (json['student_id'] as num).toInt(),
      forename: json['forename'] as String,
      nickname: json['nickname'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String,
      checked: json['checked'] as String,
      note: json['note'] as String,
      checkedAt: json['checked_at'] as String?,
      teacher: json['teacher'] == null
          ? null
          : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChecklistStudentToJson(ChecklistStudent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'forename': instance.forename,
      'nickname': instance.nickname,
      'name': instance.name,
      'gender': instance.gender,
      'checked': instance.checked,
      'note': instance.note,
      'checked_at': instance.checkedAt,
      'teacher': instance.teacher,
      'tags': instance.tags,
    };
