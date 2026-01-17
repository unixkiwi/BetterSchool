// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'batch_token_teacher_request_mode.dart';

part 'batch_token_teacher_request.g.dart';

@JsonSerializable()
class BatchTokenTeacherRequest {
  const BatchTokenTeacherRequest({
    required this.ids,
    this.mode,
  });
  
  factory BatchTokenTeacherRequest.fromJson(Map<String, Object?> json) => _$BatchTokenTeacherRequestFromJson(json);
  
  final List<String> ids;
  final BatchTokenTeacherRequestMode? mode;

  Map<String, Object?> toJson() => _$BatchTokenTeacherRequestToJson(this);
}
