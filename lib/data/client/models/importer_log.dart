// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'importer_log.g.dart';

@JsonSerializable()
class ImporterLog {
  const ImporterLog({
    required this.type,
    required this.message,
    required this.createdAt,
  });
  
  factory ImporterLog.fromJson(Map<String, Object?> json) => _$ImporterLogFromJson(json);
  
  final String type;
  final String message;
  @JsonKey(name: 'created_at')
  final String createdAt;

  Map<String, Object?> toJson() => _$ImporterLogToJson(this);
}
