// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_journal_notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostJournalNotesResponse _$PostJournalNotesResponseFromJson(
  Map<String, dynamic> json,
) => PostJournalNotesResponse(
  data: JournalNote.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta98.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostJournalNotesResponseToJson(
  PostJournalNotesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
