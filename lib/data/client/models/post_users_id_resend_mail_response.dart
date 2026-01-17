// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'success.dart';

part 'post_users_id_resend_mail_response.g.dart';

@JsonSerializable()
class PostUsersIdResendMailResponse {
  const PostUsersIdResendMailResponse({
    required this.success,
  });
  
  factory PostUsersIdResendMailResponse.fromJson(Map<String, Object?> json) => _$PostUsersIdResendMailResponseFromJson(json);
  
  final Success success;

  Map<String, Object?> toJson() => _$PostUsersIdResendMailResponseToJson(this);
}
