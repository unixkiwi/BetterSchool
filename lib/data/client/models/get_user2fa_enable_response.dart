// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'get_user2fa_enable_response.g.dart';

@JsonSerializable()
class GetUser2faEnableResponse {
  const GetUser2faEnableResponse({
    required this.secret,
  });
  
  factory GetUser2faEnableResponse.fromJson(Map<String, Object?> json) => _$GetUser2faEnableResponseFromJson(json);
  
  final String secret;

  Map<String, Object?> toJson() => _$GetUser2faEnableResponseToJson(this);
}
