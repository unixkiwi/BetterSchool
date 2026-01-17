// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user.dart';
import 'meta107.dart';

part 'post_school_users_response.g.dart';

@JsonSerializable()
class PostSchoolUsersResponse {
  const PostSchoolUsersResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostSchoolUsersResponse.fromJson(Map<String, Object?> json) => _$PostSchoolUsersResponseFromJson(json);
  
  final User data;
  final Meta107 meta;

  Map<String, Object?> toJson() => _$PostSchoolUsersResponseToJson(this);
}
