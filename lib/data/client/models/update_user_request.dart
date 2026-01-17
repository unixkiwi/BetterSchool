// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_user_request.g.dart';

@JsonSerializable()
class UpdateUserRequest {
  const UpdateUserRequest({
    this.username,
    this.email,
    this.emailPrivate,
    this.emailBusiness,
    this.phonePrivate,
    this.phoneBusiness,
  });
  
  factory UpdateUserRequest.fromJson(Map<String, Object?> json) => _$UpdateUserRequestFromJson(json);
  
  final String? username;
  final String? email;
  @JsonKey(name: 'email_private')
  final String? emailPrivate;
  @JsonKey(name: 'email_business')
  final String? emailBusiness;
  @JsonKey(name: 'phone_private')
  final String? phonePrivate;
  @JsonKey(name: 'phone_business')
  final String? phoneBusiness;

  Map<String, Object?> toJson() => _$UpdateUserRequestToJson(this);
}
