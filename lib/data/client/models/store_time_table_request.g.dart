// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_time_table_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreTimeTableRequest _$StoreTimeTableRequestFromJson(
  Map<String, dynamic> json,
) => StoreTimeTableRequest(
  name: json['name'] as String,
  validFrom: DateTime.parse(json['valid_from'] as String),
  validTo: DateTime.parse(json['valid_to'] as String),
  object5: json['weeks  '] as String?,
  object8: json['no_school_dates '] as String?,
);

Map<String, dynamic> _$StoreTimeTableRequestToJson(
  StoreTimeTableRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'valid_from': instance.validFrom.toIso8601String(),
  'valid_to': instance.validTo.toIso8601String(),
  'weeks  ': instance.object5,
  'no_school_dates ': instance.object8,
};
