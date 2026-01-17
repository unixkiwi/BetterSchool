// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'note_type.dart';

part 'post_types_notes_response.g.dart';

@JsonSerializable()
class PostTypesNotesResponse {
  const PostTypesNotesResponse({
    required this.data,
  });
  
  factory PostTypesNotesResponse.fromJson(Map<String, Object?> json) => _$PostTypesNotesResponseFromJson(json);
  
  final NoteType data;

  Map<String, Object?> toJson() => _$PostTypesNotesResponseToJson(this);
}
