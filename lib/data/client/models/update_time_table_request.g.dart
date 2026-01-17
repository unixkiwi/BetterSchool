// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_time_table_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTimeTableRequest _$UpdateTimeTableRequestFromJson(
  Map<String, dynamic> json,
) => UpdateTimeTableRequest(
  name: json['name'] as String,
  validFrom: DateTime.parse(json['valid_from'] as String),
  validTo: DateTime.parse(json['valid_to'] as String),
  object11: json['weeks  '] as String?,
  object14: json['no_school_dates '] as String?,
);

Map<String, dynamic> _$UpdateTimeTableRequestToJson(
  UpdateTimeTableRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'valid_from': instance.validFrom.toIso8601String(),
  'valid_to': instance.validTo.toIso8601String(),
  'weeks  ': instance.object11,
  'no_school_dates ': instance.object14,
};
