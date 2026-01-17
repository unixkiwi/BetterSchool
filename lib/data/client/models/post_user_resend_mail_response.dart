// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'success.dart';

part 'post_user_resend_mail_response.g.dart';

@JsonSerializable()
class PostUserResendMailResponse {
  const PostUserResendMailResponse({
    required this.success,
  });
  
  factory PostUserResendMailResponse.fromJson(Map<String, Object?> json) => _$PostUserResendMailResponseFromJson(json);
  
  final Success success;

  Map<String, Object?> toJson() => _$PostUserResendMailResponseToJson(this);
}
