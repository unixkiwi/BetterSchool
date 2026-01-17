// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnouncementType _$AnnouncementTypeFromJson(Map<String, dynamic> json) =>
    AnnouncementType(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      color: json['color'] as String?,
      defaultValue: (json['default'] as num).toInt(),
      defaultFor: json['default_for'] as String,
      announcements: (json['announcements'] as List<dynamic>?)
          ?.map((e) => Announcement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnnouncementTypeToJson(AnnouncementType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'default': instance.defaultValue,
      'default_for': instance.defaultFor,
      'announcements': instance.announcements,
    };
