// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_announcements_announcement_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutAnnouncementsAnnouncementResponse
_$PutAnnouncementsAnnouncementResponseFromJson(Map<String, dynamic> json) =>
    PutAnnouncementsAnnouncementResponse(
      data: Announcement.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta14.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PutAnnouncementsAnnouncementResponseToJson(
  PutAnnouncementsAnnouncementResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
