// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_user_firebase_device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostUserFirebaseDeviceResponse _$PostUserFirebaseDeviceResponseFromJson(
  Map<String, dynamic> json,
) => PostUserFirebaseDeviceResponse(
  data: FirebaseDevice.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta157.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostUserFirebaseDeviceResponseToJson(
  PostUserFirebaseDeviceResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
