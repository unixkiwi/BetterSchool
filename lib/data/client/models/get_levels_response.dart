// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'level.dart';

part 'get_levels_response.g.dart';

@JsonSerializable()
class GetLevelsResponse {
  const GetLevelsResponse({
    required this.data,
  });
  
  factory GetLevelsResponse.fromJson(Map<String, Object?> json) => _$GetLevelsResponseFromJson(json);
  
  final List<Level> data;

  Map<String, Object?> toJson() => _$GetLevelsResponseToJson(this);
}
