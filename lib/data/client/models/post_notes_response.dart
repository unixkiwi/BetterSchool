// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'note.dart';

part 'post_notes_response.g.dart';

@JsonSerializable()
class PostNotesResponse {
  const PostNotesResponse({
    required this.data,
  });
  
  factory PostNotesResponse.fromJson(Map<String, Object?> json) => _$PostNotesResponseFromJson(json);
  
  final Note data;

  Map<String, Object?> toJson() => _$PostNotesResponseToJson(this);
}
