// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'array_collection.dart';
import 'meta31.dart';

part 'get_types_time_response.g.dart';

@JsonSerializable()
class GetTypesTimeResponse {
  const GetTypesTimeResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTypesTimeResponse.fromJson(Map<String, Object?> json) => _$GetTypesTimeResponseFromJson(json);
  
  final ArrayCollection data;
  final Meta31 meta;

  Map<String, Object?> toJson() => _$GetTypesTimeResponseToJson(this);
}
