// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateNoteRequest _$UpdateNoteRequestFromJson(Map<String, dynamic> json) =>
    UpdateNoteRequest(
      title: json['title'] as String?,
      description: json['description'] as String?,
      forEnum: json['for'] == null
          ? null
          : UpdateNoteRequestForEnum.fromJson(json['for'] as String),
      noteTypeId: (json['note_type_id'] as num?)?.toInt(),
      recordedAt: json['recorded_at'] == null
          ? null
          : DateTime.parse(json['recorded_at'] as String),
    );

Map<String, dynamic> _$UpdateNoteRequestToJson(UpdateNoteRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'for': _$UpdateNoteRequestForEnumEnumMap[instance.forEnum],
      'note_type_id': instance.noteTypeId,
      'recorded_at': instance.recordedAt?.toIso8601String(),
    };

const _$UpdateNoteRequestForEnumEnumMap = {
  UpdateNoteRequestForEnum.mod: 'mod',
  UpdateNoteRequestForEnum.management: 'management',
  UpdateNoteRequestForEnum.teacher: 'teacher',
  UpdateNoteRequestForEnum.guardian: 'guardian',
  UpdateNoteRequestForEnum.student: 'student',
  UpdateNoteRequestForEnum.$unknown: r'$unknown',
};
