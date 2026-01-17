// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_checklist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreChecklistRequest _$StoreChecklistRequestFromJson(
  Map<String, dynamic> json,
) => StoreChecklistRequest(
  name: json['name'] as String,
  date: DateTime.parse(json['date'] as String),
  forEnum: StoreChecklistRequestForEnum.fromJson(json['for'] as String),
  groupIds: (json['group_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  description: json['description'] as String?,
  typeId: (json['type_id'] as num?)?.toInt(),
  checks: json['checks'] == null
      ? null
      : Checks.fromJson(json['checks'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StoreChecklistRequestToJson(
  StoreChecklistRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'date': instance.date.toIso8601String(),
  'description': instance.description,
  'for': _$StoreChecklistRequestForEnumEnumMap[instance.forEnum]!,
  'type_id': instance.typeId,
  'group_ids': instance.groupIds,
  'checks': instance.checks,
};

const _$StoreChecklistRequestForEnumEnumMap = {
  StoreChecklistRequestForEnum.student: 'student',
  StoreChecklistRequestForEnum.guardian: 'guardian',
  StoreChecklistRequestForEnum.teacher: 'teacher',
  StoreChecklistRequestForEnum.management: 'management',
  StoreChecklistRequestForEnum.self: 'self',
  StoreChecklistRequestForEnum.$unknown: r'$unknown',
};
