// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_group_request.g.dart';

@JsonSerializable()
class StoreGroupRequest {
  const StoreGroupRequest({
    required this.name,
    required this.meta,
    required this.localId,
    required this.yearId,
    this.custom,
    this.levelId,
    this.tagIds,
  });
  
  factory StoreGroupRequest.fromJson(Map<String, Object?> json) => _$StoreGroupRequestFromJson(json);
  
  final String name;
  final bool meta;
  final String? custom;
  @JsonKey(name: 'level_id')
  final int? levelId;
  @JsonKey(name: 'local_id')
  final String localId;
  @JsonKey(name: 'year_id')
  final String yearId;
  @JsonKey(name: 'tag_ids')
  final List<int>? tagIds;

  Map<String, Object?> toJson() => _$StoreGroupRequestToJson(this);
}
