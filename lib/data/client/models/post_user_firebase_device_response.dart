// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'firebase_device.dart';
import 'meta157.dart';

part 'post_user_firebase_device_response.g.dart';

@JsonSerializable()
class PostUserFirebaseDeviceResponse {
  const PostUserFirebaseDeviceResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostUserFirebaseDeviceResponse.fromJson(Map<String, Object?> json) => _$PostUserFirebaseDeviceResponseFromJson(json);
  
  final FirebaseDevice data;
  final Meta157 meta;

  Map<String, Object?> toJson() => _$PostUserFirebaseDeviceResponseToJson(this);
}
