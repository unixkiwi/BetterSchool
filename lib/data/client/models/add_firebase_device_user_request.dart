// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'add_firebase_device_user_request.g.dart';

@JsonSerializable()
class AddFirebaseDeviceUserRequest {
  const AddFirebaseDeviceUserRequest({
    required this.token,
    this.name,
    this.language,
  });
  
  factory AddFirebaseDeviceUserRequest.fromJson(Map<String, Object?> json) => _$AddFirebaseDeviceUserRequestFromJson(json);
  
  final String token;
  final String? name;
  final String? language;

  Map<String, Object?> toJson() => _$AddFirebaseDeviceUserRequestToJson(this);
}
