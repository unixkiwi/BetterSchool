// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist_type.dart';
import 'meta23.dart';

part 'post_types_checklist_response.g.dart';

@JsonSerializable()
class PostTypesChecklistResponse {
  const PostTypesChecklistResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostTypesChecklistResponse.fromJson(Map<String, Object?> json) => _$PostTypesChecklistResponseFromJson(json);
  
  final ChecklistType data;
  final Meta23 meta;

  Map<String, Object?> toJson() => _$PostTypesChecklistResponseToJson(this);
}
