// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'array_collection.dart';
import 'meta30.dart';

part 'get_types_interval_response.g.dart';

@JsonSerializable()
class GetTypesIntervalResponse {
  const GetTypesIntervalResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTypesIntervalResponse.fromJson(Map<String, Object?> json) => _$GetTypesIntervalResponseFromJson(json);
  
  final ArrayCollection data;
  final Meta30 meta;

  Map<String, Object?> toJson() => _$GetTypesIntervalResponseToJson(this);
}
