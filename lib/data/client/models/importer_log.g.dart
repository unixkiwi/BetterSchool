// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'importer_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImporterLog _$ImporterLogFromJson(Map<String, dynamic> json) => ImporterLog(
  type: json['type'] as String,
  message: json['message'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$ImporterLogToJson(ImporterLog instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
      'created_at': instance.createdAt,
    };
