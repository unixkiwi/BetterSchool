// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';

part 'post_teachers_token_response.g.dart';

@JsonSerializable()
class PostTeachersTokenResponse {
  const PostTeachersTokenResponse({
    required this.data,
  });
  
  factory PostTeachersTokenResponse.fromJson(Map<String, Object?> json) => _$PostTeachersTokenResponseFromJson(json);
  
  final List<Teacher> data;

  Map<String, Object?> toJson() => _$PostTeachersTokenResponseToJson(this);
}
