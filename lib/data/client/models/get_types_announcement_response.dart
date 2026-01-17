// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement_type.dart';

part 'get_types_announcement_response.g.dart';

@JsonSerializable()
class GetTypesAnnouncementResponse {
  const GetTypesAnnouncementResponse({
    required this.data,
  });
  
  factory GetTypesAnnouncementResponse.fromJson(Map<String, Object?> json) => _$GetTypesAnnouncementResponseFromJson(json);
  
  final List<AnnouncementType> data;

  Map<String, Object?> toJson() => _$GetTypesAnnouncementResponseToJson(this);
}
