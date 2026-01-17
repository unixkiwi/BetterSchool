// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'firebase_device.g.dart';

@JsonSerializable()
class FirebaseDevice {
  const FirebaseDevice({
    required this.id,
    required this.name,
    required this.language,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });
  
  factory FirebaseDevice.fromJson(Map<String, Object?> json) => _$FirebaseDeviceFromJson(json);
  
  final int id;
  final String name;
  final String language;
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  Map<String, Object?> toJson() => _$FirebaseDeviceToJson(this);
}
