// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checks2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Checks2 _$Checks2FromJson(Map<String, dynamic> json) => Checks2(
  checked: json['checked'] as bool?,
  checkedAt: json['checked_at'] == null
      ? null
      : DateTime.parse(json['checked_at'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$Checks2ToJson(Checks2 instance) => <String, dynamic>{
  'checked': instance.checked,
  'checked_at': instance.checkedAt?.toIso8601String(),
  'note': instance.note,
};
