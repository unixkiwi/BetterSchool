// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement_type.dart';
import 'meta17.dart';

part 'post_types_announcement_response.g.dart';

@JsonSerializable()
class PostTypesAnnouncementResponse {
  const PostTypesAnnouncementResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostTypesAnnouncementResponse.fromJson(Map<String, Object?> json) => _$PostTypesAnnouncementResponseFromJson(json);
  
  final AnnouncementType data;
  final Meta17 meta;

  Map<String, Object?> toJson() => _$PostTypesAnnouncementResponseToJson(this);
}
