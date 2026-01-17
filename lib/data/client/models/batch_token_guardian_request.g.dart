// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_token_guardian_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchTokenGuardianRequest _$BatchTokenGuardianRequestFromJson(
  Map<String, dynamic> json,
) => BatchTokenGuardianRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
  mode: json['mode'] == null
      ? null
      : BatchTokenGuardianRequestMode.fromJson(json['mode'] as String),
);

Map<String, dynamic> _$BatchTokenGuardianRequestToJson(
  BatchTokenGuardianRequest instance,
) => <String, dynamic>{
  'ids': instance.ids,
  'mode': _$BatchTokenGuardianRequestModeEnumMap[instance.mode],
};

const _$BatchTokenGuardianRequestModeEnumMap = {
  BatchTokenGuardianRequestMode.valueFalse: 'false',
  BatchTokenGuardianRequestMode.valueTrue: 'true',
  BatchTokenGuardianRequestMode.force: 'force',
  BatchTokenGuardianRequestMode.$unknown: r'$unknown',
};
