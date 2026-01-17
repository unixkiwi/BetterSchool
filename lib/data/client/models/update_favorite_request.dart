// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_favorite_request.g.dart';

@JsonSerializable()
class UpdateFavoriteRequest {
  const UpdateFavoriteRequest({
    this.studentId,
    this.subjectId,
    this.groupId,
  });
  
  factory UpdateFavoriteRequest.fromJson(Map<String, Object?> json) => _$UpdateFavoriteRequestFromJson(json);
  
  @JsonKey(name: 'student_id')
  final int? studentId;
  @JsonKey(name: 'subject_id')
  final int? subjectId;
  @JsonKey(name: 'group_id')
  final int? groupId;

  Map<String, Object?> toJson() => _$UpdateFavoriteRequestToJson(this);
}
