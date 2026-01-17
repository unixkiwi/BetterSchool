// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'post_password_user_request.g.dart';

@JsonSerializable()
class PostPasswordUserRequest {
  const PostPasswordUserRequest({
    required this.oldPassword,
    required this.password,
    required this.passwordConfirmation,
  });
  
  factory PostPasswordUserRequest.fromJson(Map<String, Object?> json) => _$PostPasswordUserRequestFromJson(json);
  
  @JsonKey(name: 'old_password')
  final String oldPassword;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  Map<String, Object?> toJson() => _$PostPasswordUserRequestToJson(this);
}
