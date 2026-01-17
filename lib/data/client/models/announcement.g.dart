// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) => Announcement(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  message: json['message'] as String?,
  from: json['from'] as String,
  to: json['to'] as String,
  forValue: json['for'] as String,
  needConfirmationFromStudent: (json['need_confirmation_from_student'] as num)
      .toInt(),
  needConfirmationFromGuardian: (json['need_confirmation_from_guardian'] as num)
      .toInt(),
  singleGroup: json['single_group'] as bool,
  studentsCount: json['students_count'] as String?,
  guardiansCount: json['guardians_count'] as String?,
  allStudentsCount: json['all_students_count'] as String?,
  allGuardiansCount: json['all_guardians_count'] as String?,
  type: json['type'] == null
      ? null
      : AnnouncementType.fromJson(json['type'] as Map<String, dynamic>),
  groups: (json['groups'] as List<dynamic>?)
      ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
      .toList(),
  students: (json['students'] as List<dynamic>?)
      ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
      .toList(),
  guardians: (json['guardians'] as List<dynamic>?)
      ?.map((e) => Guardian.fromJson(e as Map<String, dynamic>))
      .toList(),
  allStudents: (json['all_students'] as List<dynamic>?)
      ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
      .toList(),
  allGuardians: (json['all_guardians'] as List<dynamic>?)
      ?.map((e) => Guardian.fromJson(e as Map<String, dynamic>))
      .toList(),
  teacher: json['teacher'] == null
      ? null
      : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AnnouncementToJson(Announcement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'from': instance.from,
      'to': instance.to,
      'for': instance.forValue,
      'need_confirmation_from_student': instance.needConfirmationFromStudent,
      'need_confirmation_from_guardian': instance.needConfirmationFromGuardian,
      'students_count': instance.studentsCount,
      'guardians_count': instance.guardiansCount,
      'all_students_count': instance.allStudentsCount,
      'all_guardians_count': instance.allGuardiansCount,
      'single_group': instance.singleGroup,
      'type': instance.type,
      'groups': instance.groups,
      'students': instance.students,
      'guardians': instance.guardians,
      'all_students': instance.allStudents,
      'all_guardians': instance.allGuardians,
      'teacher': instance.teacher,
    };
