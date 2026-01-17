// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'import_action.dart';

part 'batch_group_request.g.dart';

@JsonSerializable()
class BatchGroupRequest {
  const BatchGroupRequest({
    required this.localId,
    required this.importAction,
    required this.yearId,
    this.id,
    this.name,
    this.custom,
    this.subjects,
    this.students,
    this.tags,
  });
  
  factory BatchGroupRequest.fromJson(Map<String, Object?> json) => _$BatchGroupRequestFromJson(json);
  
  final int? id;
  final String? name;
  @JsonKey(name: 'local_id')
  final String localId;
  final String? custom;
  final List<String>? subjects;
  final List<String>? students;
  final List<String>? tags;
  final ImportAction importAction;
  @JsonKey(name: 'year_id')
  final String yearId;

  Map<String, Object?> toJson() => _$BatchGroupRequestToJson(this);
}
