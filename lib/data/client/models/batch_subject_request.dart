// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'import_action2.dart';

part 'batch_subject_request.g.dart';

@JsonSerializable()
class BatchSubjectRequest {
  const BatchSubjectRequest({
    required this.name,
    required this.localId,
    required this.importAction,
    this.id,
    this.tags,
  });
  
  factory BatchSubjectRequest.fromJson(Map<String, Object?> json) => _$BatchSubjectRequestFromJson(json);
  
  final int? id;
  final String name;
  @JsonKey(name: 'local_id')
  final String localId;
  final List<String>? tags;
  final ImportAction2 importAction;

  Map<String, Object?> toJson() => _$BatchSubjectRequestToJson(this);
}
