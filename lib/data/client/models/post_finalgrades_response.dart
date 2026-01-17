// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'finalgrade.dart';
import 'meta37.dart';

part 'post_finalgrades_response.g.dart';

@JsonSerializable()
class PostFinalgradesResponse {
  const PostFinalgradesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostFinalgradesResponse.fromJson(Map<String, Object?> json) => _$PostFinalgradesResponseFromJson(json);
  
  final Finalgrade data;
  final Meta37 meta;

  Map<String, Object?> toJson() => _$PostFinalgradesResponseToJson(this);
}
