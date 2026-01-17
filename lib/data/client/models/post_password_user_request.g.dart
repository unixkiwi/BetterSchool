// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_password_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostPasswordUserRequest _$PostPasswordUserRequestFromJson(
  Map<String, dynamic> json,
) => PostPasswordUserRequest(
  oldPassword: json['old_password'] as String,
  password: json['password'] as String,
  passwordConfirmation: json['password_confirmation'] as String,
);

Map<String, dynamic> _$PostPasswordUserRequestToJson(
  PostPasswordUserRequest instance,
) => <String, dynamic>{
  'old_password': instance.oldPassword,
  'password': instance.password,
  'password_confirmation': instance.passwordConfirmation,
};
