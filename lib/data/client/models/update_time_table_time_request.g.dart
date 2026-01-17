// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_time_table_time_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTimeTableTimeRequest _$UpdateTimeTableTimeRequestFromJson(
  Map<String, dynamic> json,
) => UpdateTimeTableTimeRequest(
  name: json['name'] as String,
  validFrom: DateTime.parse(json['valid_from'] as String),
  validTo: DateTime.parse(json['valid_to'] as String),
  defaultValue: json['default'] as bool,
  type: json['type'] as String?,
);

Map<String, dynamic> _$UpdateTimeTableTimeRequestToJson(
  UpdateTimeTableTimeRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'valid_from': instance.validFrom.toIso8601String(),
  'valid_to': instance.validTo.toIso8601String(),
  'default': instance.defaultValue,
};
