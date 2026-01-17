// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user.dart';
import 'meta156.dart';

part 'post_user_password_response.g.dart';

@JsonSerializable()
class PostUserPasswordResponse {
  const PostUserPasswordResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostUserPasswordResponse.fromJson(Map<String, Object?> json) => _$PostUserPasswordResponseFromJson(json);
  
  final User data;
  final Meta156 meta;

  Map<String, Object?> toJson() => _$PostUserPasswordResponseToJson(this);
}
