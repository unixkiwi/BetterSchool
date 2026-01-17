// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'importer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Importer _$ImporterFromJson(Map<String, dynamic> json) => Importer(
  id: (json['id'] as num).toInt(),
  active: (json['active'] as num).toInt(),
  secretStudent: json['secret_student'] as String?,
  secretTeacher: json['secret_teacher'] as String?,
  webhookSecret: json['webhook_secret'] as String?,
  logs: (json['logs'] as List<dynamic>?)
      ?.map((e) => ImporterLog.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ImporterToJson(Importer instance) => <String, dynamic>{
  'id': instance.id,
  'active': instance.active,
  'secret_student': instance.secretStudent,
  'secret_teacher': instance.secretTeacher,
  'webhook_secret': instance.webhookSecret,
  'logs': instance.logs,
};
