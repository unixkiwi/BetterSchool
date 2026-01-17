// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_announcements_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAnnouncementsIdResponse _$GetAnnouncementsIdResponseFromJson(
  Map<String, dynamic> json,
) => GetAnnouncementsIdResponse(
  data: Announcement.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta16.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetAnnouncementsIdResponseToJson(
  GetAnnouncementsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
