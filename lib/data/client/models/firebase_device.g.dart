// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirebaseDevice _$FirebaseDeviceFromJson(Map<String, dynamic> json) =>
    FirebaseDevice(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      language: json['language'] as String,
      userId: (json['user_id'] as num).toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$FirebaseDeviceToJson(FirebaseDevice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
