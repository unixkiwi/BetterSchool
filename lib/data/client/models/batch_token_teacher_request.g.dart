// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_token_teacher_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchTokenTeacherRequest _$BatchTokenTeacherRequestFromJson(
  Map<String, dynamic> json,
) => BatchTokenTeacherRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
  mode: json['mode'] == null
      ? null
      : BatchTokenTeacherRequestMode.fromJson(json['mode'] as String),
);

Map<String, dynamic> _$BatchTokenTeacherRequestToJson(
  BatchTokenTeacherRequest instance,
) => <String, dynamic>{
  'ids': instance.ids,
  'mode': _$BatchTokenTeacherRequestModeEnumMap[instance.mode],
};

const _$BatchTokenTeacherRequestModeEnumMap = {
  BatchTokenTeacherRequestMode.valueFalse: 'false',
  BatchTokenTeacherRequestMode.valueTrue: 'true',
  BatchTokenTeacherRequestMode.force: 'force',
  BatchTokenTeacherRequestMode.$unknown: r'$unknown',
};
