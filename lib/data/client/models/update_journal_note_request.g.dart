// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_journal_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateJournalNoteRequest _$UpdateJournalNoteRequestFromJson(
  Map<String, dynamic> json,
) => UpdateJournalNoteRequest(
  typeId: (json['type_id'] as num).toInt(),
  forEnum: UpdateJournalNoteRequestForEnum.fromJson(json['for'] as String),
  description: json['description'] as String,
);

Map<String, dynamic> _$UpdateJournalNoteRequestToJson(
  UpdateJournalNoteRequest instance,
) => <String, dynamic>{
  'type_id': instance.typeId,
  'for': _$UpdateJournalNoteRequestForEnumEnumMap[instance.forEnum]!,
  'description': instance.description,
};

const _$UpdateJournalNoteRequestForEnumEnumMap = {
  UpdateJournalNoteRequestForEnum.student: 'student',
  UpdateJournalNoteRequestForEnum.guardian: 'guardian',
  UpdateJournalNoteRequestForEnum.teacher: 'teacher',
  UpdateJournalNoteRequestForEnum.management: 'management',
  UpdateJournalNoteRequestForEnum.self: 'self',
  UpdateJournalNoteRequestForEnum.$unknown: r'$unknown',
};
