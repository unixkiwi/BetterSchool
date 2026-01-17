// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_importer_request.g.dart';

@JsonSerializable()
class UpdateImporterRequest {
  const UpdateImporterRequest({
    required this.active,
    this.secretStudent,
    this.secretTeacher,
    this.webhookSecret,
  });
  
  factory UpdateImporterRequest.fromJson(Map<String, Object?> json) => _$UpdateImporterRequestFromJson(json);
  
  final bool active;
  @JsonKey(name: 'secret_student')
  final String? secretStudent;
  @JsonKey(name: 'secret_teacher')
  final String? secretTeacher;
  @JsonKey(name: 'webhook_secret')
  final String? webhookSecret;

  Map<String, Object?> toJson() => _$UpdateImporterRequestToJson(this);
}
