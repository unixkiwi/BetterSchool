// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Checks _$ChecksFromJson(Map<String, dynamic> json) => Checks(
  checked: json['checked'] as bool?,
  checkedAt: json['checked_at'] == null
      ? null
      : DateTime.parse(json['checked_at'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$ChecksToJson(Checks instance) => <String, dynamic>{
  'checked': instance.checked,
  'checked_at': instance.checkedAt?.toIso8601String(),
  'note': instance.note,
};
