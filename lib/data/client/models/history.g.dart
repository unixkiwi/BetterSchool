// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

History _$HistoryFromJson(Map<String, dynamic> json) => History(
  id: (json['id'] as num).toInt(),
  historyEntryType: json['history_entry_type'] as String,
  historyEntryId: (json['history_entry_id'] as num).toInt(),
  body: json['body'] as String,
  action: json['action'] as String?,
  attr: json['attr'] as String?,
  oldValue: json['old_value'] as String?,
  conductorId: (json['conductor_id'] as num?)?.toInt(),
  conductorType: json['conductor_type'] as String,
);

Map<String, dynamic> _$HistoryToJson(History instance) => <String, dynamic>{
  'id': instance.id,
  'history_entry_type': instance.historyEntryType,
  'history_entry_id': instance.historyEntryId,
  'body': instance.body,
  'action': instance.action,
  'attr': instance.attr,
  'old_value': instance.oldValue,
  'conductor_id': instance.conductorId,
  'conductor_type': instance.conductorType,
};
