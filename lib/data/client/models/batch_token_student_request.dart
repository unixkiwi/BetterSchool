// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'batch_token_student_request_mode.dart';

part 'batch_token_student_request.g.dart';

@JsonSerializable()
class BatchTokenStudentRequest {
  const BatchTokenStudentRequest({
    required this.ids,
    this.mode,
  });
  
  factory BatchTokenStudentRequest.fromJson(Map<String, Object?> json) => _$BatchTokenStudentRequestFromJson(json);
  
  final List<String> ids;
  final BatchTokenStudentRequestMode? mode;

  Map<String, Object?> toJson() => _$BatchTokenStudentRequestToJson(this);
}
