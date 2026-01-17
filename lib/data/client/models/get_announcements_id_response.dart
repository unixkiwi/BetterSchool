// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement.dart';
import 'meta16.dart';

part 'get_announcements_id_response.g.dart';

@JsonSerializable()
class GetAnnouncementsIdResponse {
  const GetAnnouncementsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetAnnouncementsIdResponse.fromJson(Map<String, Object?> json) => _$GetAnnouncementsIdResponseFromJson(json);
  
  final Announcement data;
  final Meta16 meta;

  Map<String, Object?> toJson() => _$GetAnnouncementsIdResponseToJson(this);
}
