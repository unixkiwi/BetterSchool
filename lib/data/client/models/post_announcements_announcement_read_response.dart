// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement.dart';
import 'meta15.dart';

part 'post_announcements_announcement_read_response.g.dart';

@JsonSerializable()
class PostAnnouncementsAnnouncementReadResponse {
  const PostAnnouncementsAnnouncementReadResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostAnnouncementsAnnouncementReadResponse.fromJson(Map<String, Object?> json) => _$PostAnnouncementsAnnouncementReadResponseFromJson(json);
  
  final Announcement data;
  final Meta15 meta;

  Map<String, Object?> toJson() => _$PostAnnouncementsAnnouncementReadResponseToJson(this);
}
