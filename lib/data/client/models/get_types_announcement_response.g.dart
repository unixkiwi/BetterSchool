// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_types_announcement_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTypesAnnouncementResponse _$GetTypesAnnouncementResponseFromJson(
  Map<String, dynamic> json,
) => GetTypesAnnouncementResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => AnnouncementType.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTypesAnnouncementResponseToJson(
  GetTypesAnnouncementResponse instance,
) => <String, dynamic>{'data': instance.data};
