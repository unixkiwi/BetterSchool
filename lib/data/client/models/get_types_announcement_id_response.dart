// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement_type.dart';
import 'meta18.dart';

part 'get_types_announcement_id_response.g.dart';

@JsonSerializable()
class GetTypesAnnouncementIdResponse {
  const GetTypesAnnouncementIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTypesAnnouncementIdResponse.fromJson(Map<String, Object?> json) => _$GetTypesAnnouncementIdResponseFromJson(json);
  
  final AnnouncementType data;
  final Meta18 meta;

  Map<String, Object?> toJson() => _$GetTypesAnnouncementIdResponseToJson(this);
}
