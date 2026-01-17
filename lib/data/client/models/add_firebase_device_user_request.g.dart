// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_firebase_device_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddFirebaseDeviceUserRequest _$AddFirebaseDeviceUserRequestFromJson(
  Map<String, dynamic> json,
) => AddFirebaseDeviceUserRequest(
  token: json['token'] as String,
  name: json['name'] as String?,
  language: json['language'] as String?,
);

Map<String, dynamic> _$AddFirebaseDeviceUserRequestToJson(
  AddFirebaseDeviceUserRequest instance,
) => <String, dynamic>{
  'token': instance.token,
  'name': instance.name,
  'language': instance.language,
};
