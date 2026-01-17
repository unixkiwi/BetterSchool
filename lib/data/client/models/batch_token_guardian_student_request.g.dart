// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_token_guardian_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchTokenGuardianStudentRequest _$BatchTokenGuardianStudentRequestFromJson(
  Map<String, dynamic> json,
) => BatchTokenGuardianStudentRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
  mode: json['mode'] == null
      ? null
      : BatchTokenGuardianStudentRequestMode.fromJson(json['mode'] as String),
);

Map<String, dynamic> _$BatchTokenGuardianStudentRequestToJson(
  BatchTokenGuardianStudentRequest instance,
) => <String, dynamic>{
  'ids': instance.ids,
  'mode': _$BatchTokenGuardianStudentRequestModeEnumMap[instance.mode],
};

const _$BatchTokenGuardianStudentRequestModeEnumMap = {
  BatchTokenGuardianStudentRequestMode.valueFalse: 'false',
  BatchTokenGuardianStudentRequestMode.valueTrue: 'true',
  BatchTokenGuardianStudentRequestMode.force: 'force',
  BatchTokenGuardianStudentRequestMode.$unknown: r'$unknown',
};
