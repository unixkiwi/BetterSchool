// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_announcement_type_request_default_for.dart';

part 'store_announcement_type_request.g.dart';

@JsonSerializable()
class StoreAnnouncementTypeRequest {
  const StoreAnnouncementTypeRequest({
    required this.name,
    required this.defaultValue,
    required this.defaultFor,
    this.color,
  });
  
  factory StoreAnnouncementTypeRequest.fromJson(Map<String, Object?> json) => _$StoreAnnouncementTypeRequestFromJson(json);
  
  final String name;
  final String? color;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final bool defaultValue;
  @JsonKey(name: 'default_for')
  final StoreAnnouncementTypeRequestDefaultFor defaultFor;

  Map<String, Object?> toJson() => _$StoreAnnouncementTypeRequestToJson(this);
}
