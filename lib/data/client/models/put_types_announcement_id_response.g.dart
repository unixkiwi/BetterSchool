// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_types_announcement_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutTypesAnnouncementIdResponse _$PutTypesAnnouncementIdResponseFromJson(
  Map<String, dynamic> json,
) => PutTypesAnnouncementIdResponse(
  data: AnnouncementType.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta19.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutTypesAnnouncementIdResponseToJson(
  PutTypesAnnouncementIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
