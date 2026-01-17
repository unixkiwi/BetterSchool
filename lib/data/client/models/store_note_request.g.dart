// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreNoteRequest _$StoreNoteRequestFromJson(Map<String, dynamic> json) =>
    StoreNoteRequest(
      title: json['title'] as String,
      description: json['description'] as String,
      forEnum: StoreNoteRequestForEnum.fromJson(json['for'] as String),
      notableType: StoreNoteRequestNotableType.fromJson(
        json['notable_type'] as String,
      ),
      notableId: json['notable_id'] as String,
      noteTypeId: (json['note_type_id'] as num).toInt(),
      recordedAt: DateTime.parse(json['recorded_at'] as String),
    );

Map<String, dynamic> _$StoreNoteRequestToJson(
  StoreNoteRequest instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'for': _$StoreNoteRequestForEnumEnumMap[instance.forEnum]!,
  'notable_type': _$StoreNoteRequestNotableTypeEnumMap[instance.notableType]!,
  'notable_id': instance.notableId,
  'note_type_id': instance.noteTypeId,
  'recorded_at': instance.recordedAt.toIso8601String(),
};

const _$StoreNoteRequestForEnumEnumMap = {
  StoreNoteRequestForEnum.mod: 'mod',
  StoreNoteRequestForEnum.management: 'management',
  StoreNoteRequestForEnum.teacher: 'teacher',
  StoreNoteRequestForEnum.guardian: 'guardian',
  StoreNoteRequestForEnum.student: 'student',
  StoreNoteRequestForEnum.$unknown: r'$unknown',
};

const _$StoreNoteRequestNotableTypeEnumMap = {
  StoreNoteRequestNotableType.student: 'student',
  StoreNoteRequestNotableType.group: 'group',
  StoreNoteRequestNotableType.$unknown: r'$unknown',
};
