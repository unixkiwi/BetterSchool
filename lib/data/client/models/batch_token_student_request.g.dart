// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_token_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchTokenStudentRequest _$BatchTokenStudentRequestFromJson(
  Map<String, dynamic> json,
) => BatchTokenStudentRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
  mode: json['mode'] == null
      ? null
      : BatchTokenStudentRequestMode.fromJson(json['mode'] as String),
);

Map<String, dynamic> _$BatchTokenStudentRequestToJson(
  BatchTokenStudentRequest instance,
) => <String, dynamic>{
  'ids': instance.ids,
  'mode': _$BatchTokenStudentRequestModeEnumMap[instance.mode],
};

const _$BatchTokenStudentRequestModeEnumMap = {
  BatchTokenStudentRequestMode.valueFalse: 'false',
  BatchTokenStudentRequestMode.valueTrue: 'true',
  BatchTokenStudentRequestMode.force: 'force',
  BatchTokenStudentRequestMode.$unknown: r'$unknown',
};
