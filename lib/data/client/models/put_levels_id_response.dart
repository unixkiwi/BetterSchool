// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'level.dart';

part 'put_levels_id_response.g.dart';

@JsonSerializable()
class PutLevelsIdResponse {
  const PutLevelsIdResponse({
    required this.data,
  });
  
  factory PutLevelsIdResponse.fromJson(Map<String, Object?> json) => _$PutLevelsIdResponseFromJson(json);
  
  final Level data;

  Map<String, Object?> toJson() => _$PutLevelsIdResponseToJson(this);
}
