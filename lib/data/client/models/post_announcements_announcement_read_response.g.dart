// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_announcements_announcement_read_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostAnnouncementsAnnouncementReadResponse
_$PostAnnouncementsAnnouncementReadResponseFromJson(
  Map<String, dynamic> json,
) => PostAnnouncementsAnnouncementReadResponse(
  data: Announcement.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta15.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostAnnouncementsAnnouncementReadResponseToJson(
  PostAnnouncementsAnnouncementReadResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
