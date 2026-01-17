// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_types_journal_notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTypesJournalNotesResponse _$GetTypesJournalNotesResponseFromJson(
  Map<String, dynamic> json,
) => GetTypesJournalNotesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => JournalNoteType.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTypesJournalNotesResponseToJson(
  GetTypesJournalNotesResponse instance,
) => <String, dynamic>{'data': instance.data};
