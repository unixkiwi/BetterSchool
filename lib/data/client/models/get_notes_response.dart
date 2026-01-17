// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'note.dart';

part 'get_notes_response.g.dart';

@JsonSerializable()
class GetNotesResponse {
  const GetNotesResponse({
    required this.data,
  });
  
  factory GetNotesResponse.fromJson(Map<String, Object?> json) => _$GetNotesResponseFromJson(json);
  
  final List<Note> data;

  Map<String, Object?> toJson() => _$GetNotesResponseToJson(this);
}
