// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement.dart';

part 'announcement_type.g.dart';

@JsonSerializable()
class AnnouncementType {
  const AnnouncementType({
    required this.id,
    required this.name,
    required this.color,
    required this.defaultValue,
    required this.defaultFor,
    this.announcements,
  });
  
  factory AnnouncementType.fromJson(Map<String, Object?> json) => _$AnnouncementTypeFromJson(json);
  
  final int id;
  final String name;
  final String? color;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final int defaultValue;
  @JsonKey(name: 'default_for')
  final String defaultFor;
  final List<Announcement>? announcements;

  Map<String, Object?> toJson() => _$AnnouncementTypeToJson(this);
}
