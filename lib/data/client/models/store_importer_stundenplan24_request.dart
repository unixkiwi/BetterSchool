// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_importer_stundenplan24_request.g.dart';

@JsonSerializable()
class StoreImporterStundenplan24Request {
  const StoreImporterStundenplan24Request({
    required this.name,
    required this.version,
    this.splanUrl,
    this.mobleUrl,
    this.mobilUrl,
    this.usernameTeacher,
    this.passwordTeacher,
    this.usernameStudent,
    this.passwordStudent,
    this.timeTableMetaId,
    this.substitutionPlanMetaId,
  });
  
  factory StoreImporterStundenplan24Request.fromJson(Map<String, Object?> json) => _$StoreImporterStundenplan24RequestFromJson(json);
  
  final String name;
  final int version;
  @JsonKey(name: 'splan_url')
  final String? splanUrl;
  @JsonKey(name: 'moble_url')
  final String? mobleUrl;
  @JsonKey(name: 'mobil_url')
  final String? mobilUrl;
  @JsonKey(name: 'username_teacher')
  final String? usernameTeacher;
  @JsonKey(name: 'password_teacher')
  final String? passwordTeacher;
  @JsonKey(name: 'username_student')
  final String? usernameStudent;
  @JsonKey(name: 'password_student')
  final String? passwordStudent;
  @JsonKey(name: 'time_table_meta_id')
  final int? timeTableMetaId;
  @JsonKey(name: 'substitution_plan_meta_id')
  final int? substitutionPlanMetaId;

  Map<String, Object?> toJson() => _$StoreImporterStundenplan24RequestToJson(this);
}
