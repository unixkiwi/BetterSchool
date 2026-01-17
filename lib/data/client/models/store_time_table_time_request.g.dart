// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_time_table_time_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreTimeTableTimeRequest _$StoreTimeTableTimeRequestFromJson(
  Map<String, dynamic> json,
) => StoreTimeTableTimeRequest(
  name: json['name'] as String,
  validFrom: DateTime.parse(json['valid_from'] as String),
  validTo: DateTime.parse(json['valid_to'] as String),
  defaultValue: json['default'] as bool,
  type: json['type'] as String?,
);

Map<String, dynamic> _$StoreTimeTableTimeRequestToJson(
  StoreTimeTableTimeRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'valid_from': instance.validFrom.toIso8601String(),
  'valid_to': instance.validTo.toIso8601String(),
  'default': instance.defaultValue,
};
