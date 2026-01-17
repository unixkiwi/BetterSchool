// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_interval_request.g.dart';

@JsonSerializable()
class StoreIntervalRequest {
  const StoreIntervalRequest({
    required this.name,
    required this.from,
    required this.to,
    required this.editableTo,
    required this.yearId,
    this.type,
    this.includedIntervalId,
  });
  
  factory StoreIntervalRequest.fromJson(Map<String, Object?> json) => _$StoreIntervalRequestFromJson(json);
  
  final String name;
  final String? type;
  final DateTime from;
  final DateTime to;
  @JsonKey(name: 'editable_to')
  final DateTime editableTo;
  @JsonKey(name: 'included_interval_id')
  final int? includedIntervalId;
  @JsonKey(name: 'year_id')
  final int yearId;

  Map<String, Object?> toJson() => _$StoreIntervalRequestToJson(this);
}
