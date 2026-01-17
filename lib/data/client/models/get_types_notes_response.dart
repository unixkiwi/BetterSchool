// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'note_type.dart';

part 'get_types_notes_response.g.dart';

@JsonSerializable()
class GetTypesNotesResponse {
  const GetTypesNotesResponse({
    required this.data,
  });
  
  factory GetTypesNotesResponse.fromJson(Map<String, Object?> json) => _$GetTypesNotesResponseFromJson(json);
  
  final List<NoteType> data;

  Map<String, Object?> toJson() => _$GetTypesNotesResponseToJson(this);
}
