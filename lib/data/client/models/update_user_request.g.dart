// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    UpdateUserRequest(
      username: json['username'] as String?,
      email: json['email'] as String?,
      emailPrivate: json['email_private'] as String?,
      emailBusiness: json['email_business'] as String?,
      phonePrivate: json['phone_private'] as String?,
      phoneBusiness: json['phone_business'] as String?,
    );

Map<String, dynamic> _$UpdateUserRequestToJson(UpdateUserRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'email_private': instance.emailPrivate,
      'email_business': instance.emailBusiness,
      'phone_private': instance.phonePrivate,
      'phone_business': instance.phoneBusiness,
    };
