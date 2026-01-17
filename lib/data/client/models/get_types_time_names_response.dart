// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'array_collection.dart';
import 'meta33.dart';

part 'get_types_time_names_response.g.dart';

@JsonSerializable()
class GetTypesTimeNamesResponse {
  const GetTypesTimeNamesResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTypesTimeNamesResponse.fromJson(Map<String, Object?> json) => _$GetTypesTimeNamesResponseFromJson(json);
  
  final ArrayCollection data;
  final Meta33 meta;

  Map<String, Object?> toJson() => _$GetTypesTimeNamesResponseToJson(this);
}
