// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement.dart';
import 'meta14.dart';

part 'put_announcements_announcement_response.g.dart';

@JsonSerializable()
class PutAnnouncementsAnnouncementResponse {
  const PutAnnouncementsAnnouncementResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutAnnouncementsAnnouncementResponse.fromJson(Map<String, Object?> json) => _$PutAnnouncementsAnnouncementResponseFromJson(json);
  
  final Announcement data;
  final Meta14 meta;

  Map<String, Object?> toJson() => _$PutAnnouncementsAnnouncementResponseToJson(this);
}
