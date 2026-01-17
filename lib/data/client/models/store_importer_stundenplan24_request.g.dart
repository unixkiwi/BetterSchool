// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_importer_stundenplan24_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreImporterStundenplan24Request _$StoreImporterStundenplan24RequestFromJson(
  Map<String, dynamic> json,
) => StoreImporterStundenplan24Request(
  name: json['name'] as String,
  version: (json['version'] as num).toInt(),
  splanUrl: json['splan_url'] as String?,
  mobleUrl: json['moble_url'] as String?,
  mobilUrl: json['mobil_url'] as String?,
  usernameTeacher: json['username_teacher'] as String?,
  passwordTeacher: json['password_teacher'] as String?,
  usernameStudent: json['username_student'] as String?,
  passwordStudent: json['password_student'] as String?,
  timeTableMetaId: (json['time_table_meta_id'] as num?)?.toInt(),
  substitutionPlanMetaId: (json['substitution_plan_meta_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$StoreImporterStundenplan24RequestToJson(
  StoreImporterStundenplan24Request instance,
) => <String, dynamic>{
  'name': instance.name,
  'version': instance.version,
  'splan_url': instance.splanUrl,
  'moble_url': instance.mobleUrl,
  'mobil_url': instance.mobilUrl,
  'username_teacher': instance.usernameTeacher,
  'password_teacher': instance.passwordTeacher,
  'username_student': instance.usernameStudent,
  'password_student': instance.passwordStudent,
  'time_table_meta_id': instance.timeTableMetaId,
  'substitution_plan_meta_id': instance.substitutionPlanMetaId,
};
