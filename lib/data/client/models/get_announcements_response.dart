// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement.dart';

part 'get_announcements_response.g.dart';

@JsonSerializable()
class GetAnnouncementsResponse {
  const GetAnnouncementsResponse({
    required this.data,
  });
  
  factory GetAnnouncementsResponse.fromJson(Map<String, Object?> json) => _$GetAnnouncementsResponseFromJson(json);
  
  final List<Announcement> data;

  Map<String, Object?> toJson() => _$GetAnnouncementsResponseToJson(this);
}
