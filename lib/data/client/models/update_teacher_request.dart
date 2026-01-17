// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'update_teacher_request_role.dart';

part 'update_teacher_request.g.dart';

@JsonSerializable()
class UpdateTeacherRequest {
  const UpdateTeacherRequest({
    required this.name,
    required this.localId,
    this.forename,
    this.role,
    this.deleted,
    this.tagIds,
  });
  
  factory UpdateTeacherRequest.fromJson(Map<String, Object?> json) => _$UpdateTeacherRequestFromJson(json);
  
  final String name;
  final String? forename;
  final UpdateTeacherRequestRole? role;
  final bool? deleted;
  @JsonKey(name: 'local_id')
  final String localId;
  @JsonKey(name: 'tag_ids')
  final List<int>? tagIds;

  Map<String, Object?> toJson() => _$UpdateTeacherRequestToJson(this);
}
