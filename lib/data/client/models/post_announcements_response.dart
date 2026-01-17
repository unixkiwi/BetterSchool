// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement.dart';
import 'meta13.dart';

part 'post_announcements_response.g.dart';

@JsonSerializable()
class PostAnnouncementsResponse {
  const PostAnnouncementsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostAnnouncementsResponse.fromJson(Map<String, Object?> json) => _$PostAnnouncementsResponseFromJson(json);
  
  final Announcement data;
  final Meta13 meta;

  Map<String, Object?> toJson() => _$PostAnnouncementsResponseToJson(this);
}
