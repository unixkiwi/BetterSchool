// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'batch_token_guardian_student_request_mode.dart';

part 'batch_token_guardian_student_request.g.dart';

@JsonSerializable()
class BatchTokenGuardianStudentRequest {
  const BatchTokenGuardianStudentRequest({
    required this.ids,
    this.mode,
  });
  
  factory BatchTokenGuardianStudentRequest.fromJson(Map<String, Object?> json) => _$BatchTokenGuardianStudentRequestFromJson(json);
  
  final List<String> ids;
  final BatchTokenGuardianStudentRequestMode? mode;

  Map<String, Object?> toJson() => _$BatchTokenGuardianStudentRequestToJson(this);
}
