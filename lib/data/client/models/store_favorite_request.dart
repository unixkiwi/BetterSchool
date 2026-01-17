// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_favorite_request.g.dart';

@JsonSerializable()
class StoreFavoriteRequest {
  const StoreFavoriteRequest({
    this.studentId,
    this.subjectId,
    this.groupId,
  });
  
  factory StoreFavoriteRequest.fromJson(Map<String, Object?> json) => _$StoreFavoriteRequestFromJson(json);
  
  @JsonKey(name: 'student_id')
  final int? studentId;
  @JsonKey(name: 'subject_id')
  final int? subjectId;
  @JsonKey(name: 'group_id')
  final int? groupId;

  Map<String, Object?> toJson() => _$StoreFavoriteRequestToJson(this);
}
