// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'note_type.dart';

part 'put_types_notes_id_response.g.dart';

@JsonSerializable()
class PutTypesNotesIdResponse {
  const PutTypesNotesIdResponse({
    required this.data,
  });
  
  factory PutTypesNotesIdResponse.fromJson(Map<String, Object?> json) => _$PutTypesNotesIdResponseFromJson(json);
  
  final NoteType data;

  Map<String, Object?> toJson() => _$PutTypesNotesIdResponseToJson(this);
}
