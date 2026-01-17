// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_log.dart';

part 'importer.g.dart';

@JsonSerializable()
class Importer {
  const Importer({
    required this.id,
    required this.active,
    required this.secretStudent,
    required this.secretTeacher,
    required this.webhookSecret,
    this.logs,
  });
  
  factory Importer.fromJson(Map<String, Object?> json) => _$ImporterFromJson(json);
  
  final int id;
  final int active;
  @JsonKey(name: 'secret_student')
  final String? secretStudent;
  @JsonKey(name: 'secret_teacher')
  final String? secretTeacher;
  @JsonKey(name: 'webhook_secret')
  final String? webhookSecret;
  final List<ImporterLog>? logs;

  Map<String, Object?> toJson() => _$ImporterToJson(this);
}
