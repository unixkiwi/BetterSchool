// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'import_action.dart';

part 'batch_teacher_request.g.dart';

@JsonSerializable()
class BatchTeacherRequest {
  const BatchTeacherRequest({
    required this.localId,
    required this.importAction,
    this.id,
    this.name,
    this.forename,
    this.tags,
  });
  
  factory BatchTeacherRequest.fromJson(Map<String, Object?> json) => _$BatchTeacherRequestFromJson(json);
  
  final int? id;
  final String? name;
  final String? forename;
  @JsonKey(name: 'local_id')
  final String localId;
  final List<String>? tags;
  final ImportAction importAction;

  Map<String, Object?> toJson() => _$BatchTeacherRequestToJson(this);
}
