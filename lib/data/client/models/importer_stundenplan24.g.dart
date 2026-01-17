// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'importer_stundenplan24.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImporterStundenplan24 _$ImporterStundenplan24FromJson(
  Map<String, dynamic> json,
) => ImporterStundenplan24(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  version: (json['version'] as num).toInt(),
  splanUrl: json['splan_url'] as String?,
  mobilUrl: json['mobil_url'] as String?,
  mobleUrl: json['moble_url'] as String?,
  usernameTeacher: json['username_teacher'] as String?,
  passwordTeacher: ImporterStundenplan24PasswordTeacher.fromJson(
    json['password_teacher'] as String,
  ),
  usernameStudent: json['username_student'] as String?,
  passwordStudent: ImporterStundenplan24PasswordStudent.fromJson(
    json['password_student'] as String,
  ),
  timeTableMetaId: (json['time_table_meta_id'] as num?)?.toInt(),
  substitutionPlanMetaId: (json['substitution_plan_meta_id'] as num?)?.toInt(),
  logs: (json['logs'] as List<dynamic>?)
      ?.map((e) => ImporterLog.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ImporterStundenplan24ToJson(
  ImporterStundenplan24 instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'version': instance.version,
  'splan_url': instance.splanUrl,
  'mobil_url': instance.mobilUrl,
  'moble_url': instance.mobleUrl,
  'username_teacher': instance.usernameTeacher,
  'password_teacher':
      _$ImporterStundenplan24PasswordTeacherEnumMap[instance.passwordTeacher]!,
  'username_student': instance.usernameStudent,
  'password_student':
      _$ImporterStundenplan24PasswordStudentEnumMap[instance.passwordStudent]!,
  'time_table_meta_id': instance.timeTableMetaId,
  'substitution_plan_meta_id': instance.substitutionPlanMetaId,
  'logs': instance.logs,
};

const _$ImporterStundenplan24PasswordTeacherEnumMap = {
  ImporterStundenplan24PasswordTeacher.empty: '',
  ImporterStundenplan24PasswordTeacher.$unknown: r'$unknown',
};

const _$ImporterStundenplan24PasswordStudentEnumMap = {
  ImporterStundenplan24PasswordStudent.empty: '',
  ImporterStundenplan24PasswordStudent.$unknown: r'$unknown',
};
