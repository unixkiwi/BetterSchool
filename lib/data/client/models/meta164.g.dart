// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta164.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta164 _$Meta164FromJson(Map<String, dynamic> json) => Meta164(
  version: json['version'] as String,
  type: Type.fromJson(json['type'] as String),
);

Map<String, dynamic> _$Meta164ToJson(Meta164 instance) => <String, dynamic>{
  'version': instance.version,
  'type': _$TypeEnumMap[instance.type]!,
};

const _$TypeEnumMap = {
  Type.timetable: 'timetable',
  Type.substitutionplan: 'substitutionplan',
  Type.$unknown: r'$unknown',
};
