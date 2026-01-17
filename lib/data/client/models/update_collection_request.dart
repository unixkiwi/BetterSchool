// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_collection_request.g.dart';

@JsonSerializable()
class UpdateCollectionRequest {
  const UpdateCollectionRequest({
    required this.type,
    required this.name,
    required this.givenAt,
    required this.intervalId,
    this.weighting,
    this.visibleFrom,
  });
  
  factory UpdateCollectionRequest.fromJson(Map<String, Object?> json) => _$UpdateCollectionRequestFromJson(json);
  
  final String type;
  final String name;
  final int? weighting;
  @JsonKey(name: 'given_at')
  final DateTime givenAt;
  @JsonKey(name: 'visible_from')
  final DateTime? visibleFrom;
  @JsonKey(name: 'interval_id')
  final int intervalId;

  Map<String, Object?> toJson() => _$UpdateCollectionRequestToJson(this);
}
