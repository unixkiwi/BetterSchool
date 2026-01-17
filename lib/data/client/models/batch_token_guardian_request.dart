// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'batch_token_guardian_request_mode.dart';

part 'batch_token_guardian_request.g.dart';

@JsonSerializable()
class BatchTokenGuardianRequest {
  const BatchTokenGuardianRequest({
    required this.ids,
    this.mode,
  });
  
  factory BatchTokenGuardianRequest.fromJson(Map<String, Object?> json) => _$BatchTokenGuardianRequestFromJson(json);
  
  final List<String> ids;
  final BatchTokenGuardianRequestMode? mode;

  Map<String, Object?> toJson() => _$BatchTokenGuardianRequestToJson(this);
}
