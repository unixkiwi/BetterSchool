// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_notes_note_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutNotesNoteResponse _$PutNotesNoteResponseFromJson(
  Map<String, dynamic> json,
) => PutNotesNoteResponse(
  data: Note.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutNotesNoteResponseToJson(
  PutNotesNoteResponse instance,
) => <String, dynamic>{'data': instance.data};
