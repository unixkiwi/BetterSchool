// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'level.dart';

part 'get_levels_id_response.g.dart';

@JsonSerializable()
class GetLevelsIdResponse {
  const GetLevelsIdResponse({
    required this.data,
  });
  
  factory GetLevelsIdResponse.fromJson(Map<String, Object?> json) => _$GetLevelsIdResponseFromJson(json);
  
  final Level data;

  Map<String, Object?> toJson() => _$GetLevelsIdResponseToJson(this);
}
