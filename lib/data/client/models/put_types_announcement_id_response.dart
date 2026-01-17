// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement_type.dart';
import 'meta19.dart';

part 'put_types_announcement_id_response.g.dart';

@JsonSerializable()
class PutTypesAnnouncementIdResponse {
  const PutTypesAnnouncementIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutTypesAnnouncementIdResponse.fromJson(Map<String, Object?> json) => _$PutTypesAnnouncementIdResponseFromJson(json);
  
  final AnnouncementType data;
  final Meta19 meta;

  Map<String, Object?> toJson() => _$PutTypesAnnouncementIdResponseToJson(this);
}
