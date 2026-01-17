// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'level.dart';

part 'post_levels_response.g.dart';

@JsonSerializable()
class PostLevelsResponse {
  const PostLevelsResponse({
    required this.data,
  });
  
  factory PostLevelsResponse.fromJson(Map<String, Object?> json) => _$PostLevelsResponseFromJson(json);
  
  final Level data;

  Map<String, Object?> toJson() => _$PostLevelsResponseToJson(this);
}
