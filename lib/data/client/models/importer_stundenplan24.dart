// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_log.dart';
import 'importer_stundenplan24_password_student.dart';
import 'importer_stundenplan24_password_teacher.dart';

part 'importer_stundenplan24.g.dart';

@JsonSerializable()
class ImporterStundenplan24 {
  const ImporterStundenplan24({
    required this.id,
    required this.name,
    required this.version,
    required this.splanUrl,
    required this.mobilUrl,
    required this.mobleUrl,
    required this.usernameTeacher,
    required this.passwordTeacher,
    required this.usernameStudent,
    required this.passwordStudent,
    required this.timeTableMetaId,
    required this.substitutionPlanMetaId,
    this.logs,
  });
  
  factory ImporterStundenplan24.fromJson(Map<String, Object?> json) => _$ImporterStundenplan24FromJson(json);
  
  final int id;
  final String name;
  final int version;
  @JsonKey(name: 'splan_url')
  final String? splanUrl;
  @JsonKey(name: 'mobil_url')
  final String? mobilUrl;
  @JsonKey(name: 'moble_url')
  final String? mobleUrl;
  @JsonKey(name: 'username_teacher')
  final String? usernameTeacher;
  @JsonKey(name: 'password_teacher')
  final ImporterStundenplan24PasswordTeacher passwordTeacher;
  @JsonKey(name: 'username_student')
  final String? usernameStudent;
  @JsonKey(name: 'password_student')
  final ImporterStundenplan24PasswordStudent passwordStudent;
  @JsonKey(name: 'time_table_meta_id')
  final int? timeTableMetaId;
  @JsonKey(name: 'substitution_plan_meta_id')
  final int? substitutionPlanMetaId;
  final List<ImporterLog>? logs;

  Map<String, Object?> toJson() => _$ImporterStundenplan24ToJson(this);
}
