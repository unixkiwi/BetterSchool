// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_importer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreImporterRequest _$StoreImporterRequestFromJson(
  Map<String, dynamic> json,
) => StoreImporterRequest(
  active: json['active'] as bool,
  secretStudent: json['secret_student'] as String?,
  secretTeacher: json['secret_teacher'] as String?,
  webhookSecret: json['webhook_secret'] as String?,
);

Map<String, dynamic> _$StoreImporterRequestToJson(
  StoreImporterRequest instance,
) => <String, dynamic>{
  'active': instance.active,
  'secret_student': instance.secretStudent,
  'secret_teacher': instance.secretTeacher,
  'webhook_secret': instance.webhookSecret,
};
