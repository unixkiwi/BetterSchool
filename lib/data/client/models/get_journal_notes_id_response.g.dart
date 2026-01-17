// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_journal_notes_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetJournalNotesIdResponse _$GetJournalNotesIdResponseFromJson(
  Map<String, dynamic> json,
) => GetJournalNotesIdResponse(
  data: JournalNote.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta99.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetJournalNotesIdResponseToJson(
  GetJournalNotesIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
