// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_teacher_request_role.dart';

part 'store_teacher_request.g.dart';

@JsonSerializable()
class StoreTeacherRequest {
  const StoreTeacherRequest({
    required this.name,
    required this.localId,
    this.forename,
    this.role,
    this.tagIds,
  });
  
  factory StoreTeacherRequest.fromJson(Map<String, Object?> json) => _$StoreTeacherRequestFromJson(json);
  
  final String name;
  final String? forename;
  final StoreTeacherRequestRole? role;
  @JsonKey(name: 'local_id')
  final String localId;
  @JsonKey(name: 'tag_ids')
  final List<int>? tagIds;

  Map<String, Object?> toJson() => _$StoreTeacherRequestToJson(this);
}
