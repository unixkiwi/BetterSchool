// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_announcements_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAnnouncementsResponse _$GetAnnouncementsResponseFromJson(
  Map<String, dynamic> json,
) => GetAnnouncementsResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Announcement.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetAnnouncementsResponseToJson(
  GetAnnouncementsResponse instance,
) => <String, dynamic>{'data': instance.data};
