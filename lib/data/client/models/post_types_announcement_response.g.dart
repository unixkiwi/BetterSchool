// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_types_announcement_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTypesAnnouncementResponse _$PostTypesAnnouncementResponseFromJson(
  Map<String, dynamic> json,
) => PostTypesAnnouncementResponse(
  data: AnnouncementType.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta17.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostTypesAnnouncementResponseToJson(
  PostTypesAnnouncementResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
