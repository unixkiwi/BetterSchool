// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'success.dart';

part 'delete_user_auth_provider_user_socialite_response.g.dart';

@JsonSerializable()
class DeleteUserAuthProviderUserSocialiteResponse {
  const DeleteUserAuthProviderUserSocialiteResponse({
    required this.success,
  });
  
  factory DeleteUserAuthProviderUserSocialiteResponse.fromJson(Map<String, Object?> json) => _$DeleteUserAuthProviderUserSocialiteResponseFromJson(json);
  
  final Success success;

  Map<String, Object?> toJson() => _$DeleteUserAuthProviderUserSocialiteResponseToJson(this);
}
