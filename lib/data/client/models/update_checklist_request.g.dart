// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_checklist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateChecklistRequest _$UpdateChecklistRequestFromJson(
  Map<String, dynamic> json,
) => UpdateChecklistRequest(
  name: json['name'] as String,
  date: DateTime.parse(json['date'] as String),
  forEnum: UpdateChecklistRequestForEnum.fromJson(json['for'] as String),
  description: json['description'] as String?,
  typeId: (json['type_id'] as num?)?.toInt(),
  groupIds: (json['group_ids'] as List<dynamic>?)
      ?.map((e) => (e as num?)?.toInt())
      .toList(),
  checks: json['checks'] == null
      ? null
      : Checks2.fromJson(json['checks'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UpdateChecklistRequestToJson(
  UpdateChecklistRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'date': instance.date.toIso8601String(),
  'description': instance.description,
  'for': _$UpdateChecklistRequestForEnumEnumMap[instance.forEnum]!,
  'type_id': instance.typeId,
  'group_ids': instance.groupIds,
  'checks': instance.checks,
};

const _$UpdateChecklistRequestForEnumEnumMap = {
  UpdateChecklistRequestForEnum.student: 'student',
  UpdateChecklistRequestForEnum.guardian: 'guardian',
  UpdateChecklistRequestForEnum.teacher: 'teacher',
  UpdateChecklistRequestForEnum.management: 'management',
  UpdateChecklistRequestForEnum.self: 'self',
  UpdateChecklistRequestForEnum.$unknown: r'$unknown',
};
