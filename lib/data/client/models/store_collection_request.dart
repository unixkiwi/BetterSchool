// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_collection_request.g.dart';

@JsonSerializable()
class StoreCollectionRequest {
  const StoreCollectionRequest({
    required this.type,
    required this.name,
    required this.givenAt,
    required this.intervalId,
    required this.subjectId,
    required this.groupId,
    this.weighting,
    this.visibleFrom,
  });
  
  factory StoreCollectionRequest.fromJson(Map<String, Object?> json) => _$StoreCollectionRequestFromJson(json);
  
  final String type;
  final String name;
  final int? weighting;
  @JsonKey(name: 'given_at')
  final DateTime givenAt;
  @JsonKey(name: 'visible_from')
  final DateTime? visibleFrom;
  @JsonKey(name: 'interval_id')
  final int intervalId;
  @JsonKey(name: 'subject_id')
  final int subjectId;
  @JsonKey(name: 'group_id')
  final int groupId;

  Map<String, Object?> toJson() => _$StoreCollectionRequestToJson(this);
}
