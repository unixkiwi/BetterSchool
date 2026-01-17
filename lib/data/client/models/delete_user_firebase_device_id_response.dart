// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'success.dart';

part 'delete_user_firebase_device_id_response.g.dart';

@JsonSerializable()
class DeleteUserFirebaseDeviceIdResponse {
  const DeleteUserFirebaseDeviceIdResponse({
    required this.success,
  });
  
  factory DeleteUserFirebaseDeviceIdResponse.fromJson(Map<String, Object?> json) => _$DeleteUserFirebaseDeviceIdResponseFromJson(json);
  
  final Success success;

  Map<String, Object?> toJson() => _$DeleteUserFirebaseDeviceIdResponseToJson(this);
}
