// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
  description: json['description'] as String?,
  forEnum: json['for'] == null ? null : ForEnum.fromJson(json['for'] as String),
  typeId: (json['type_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
  'description': instance.description,
  'for': _$ForEnumEnumMap[instance.forEnum],
  'type_id': instance.typeId,
};

const _$ForEnumEnumMap = {
  ForEnum.student: 'student',
  ForEnum.guardian: 'guardian',
  ForEnum.teacher: 'teacher',
  ForEnum.management: 'management',
  ForEnum.self: 'self',
  ForEnum.$unknown: r'$unknown',
};
