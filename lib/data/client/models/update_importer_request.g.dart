// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_importer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateImporterRequest _$UpdateImporterRequestFromJson(
  Map<String, dynamic> json,
) => UpdateImporterRequest(
  active: json['active'] as bool,
  secretStudent: json['secret_student'] as String?,
  secretTeacher: json['secret_teacher'] as String?,
  webhookSecret: json['webhook_secret'] as String?,
);

Map<String, dynamic> _$UpdateImporterRequestToJson(
  UpdateImporterRequest instance,
) => <String, dynamic>{
  'active': instance.active,
  'secret_student': instance.secretStudent,
  'secret_teacher': instance.secretTeacher,
  'webhook_secret': instance.webhookSecret,
};
