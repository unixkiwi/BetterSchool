// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'post_user2fa_verify_response.g.dart';

@JsonSerializable()
class PostUser2faVerifyResponse {
  const PostUser2faVerifyResponse({
    required this.verified,
  });
  
  factory PostUser2faVerifyResponse.fromJson(Map<String, Object?> json) => _$PostUser2faVerifyResponseFromJson(json);
  
  final bool verified;

  Map<String, Object?> toJson() => _$PostUser2faVerifyResponseToJson(this);
}
