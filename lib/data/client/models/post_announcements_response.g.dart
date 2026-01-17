// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_announcements_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostAnnouncementsResponse _$PostAnnouncementsResponseFromJson(
  Map<String, dynamic> json,
) => PostAnnouncementsResponse(
  data: Announcement.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta13.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostAnnouncementsResponseToJson(
  PostAnnouncementsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
