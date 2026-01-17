// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_journal_notes_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutJournalNotesIdResponse _$PutJournalNotesIdResponseFromJson(
  Map<String, dynamic> json,
) => PutJournalNotesIdResponse(
  data: JournalNote.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta100.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutJournalNotesIdResponseToJson(
  PutJournalNotesIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
