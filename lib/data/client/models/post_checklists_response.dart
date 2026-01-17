// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist.dart';
import 'meta20.dart';

part 'post_checklists_response.g.dart';

@JsonSerializable()
class PostChecklistsResponse {
  const PostChecklistsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostChecklistsResponse.fromJson(Map<String, Object?> json) => _$PostChecklistsResponseFromJson(json);
  
  final Checklist data;
  final Meta20 meta;

  Map<String, Object?> toJson() => _$PostChecklistsResponseToJson(this);
}
