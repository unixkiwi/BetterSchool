// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_interval_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateIntervalRequest _$UpdateIntervalRequestFromJson(
  Map<String, dynamic> json,
) => UpdateIntervalRequest(
  name: json['name'] as String,
  from: DateTime.parse(json['from'] as String),
  to: DateTime.parse(json['to'] as String),
  editableTo: DateTime.parse(json['editable_to'] as String),
  type: json['type'] as String?,
  includedIntervalId: (json['included_interval_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$UpdateIntervalRequestToJson(
  UpdateIntervalRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'from': instance.from.toIso8601String(),
  'to': instance.to.toIso8601String(),
  'editable_to': instance.editableTo.toIso8601String(),
  'included_interval_id': instance.includedIntervalId,
};
