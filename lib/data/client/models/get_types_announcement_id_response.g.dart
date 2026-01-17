// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_types_announcement_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTypesAnnouncementIdResponse _$GetTypesAnnouncementIdResponseFromJson(
  Map<String, dynamic> json,
) => GetTypesAnnouncementIdResponse(
  data: AnnouncementType.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta18.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetTypesAnnouncementIdResponseToJson(
  GetTypesAnnouncementIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
