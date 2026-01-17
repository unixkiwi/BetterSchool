// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'history.g.dart';

@JsonSerializable()
class History {
  const History({
    required this.id,
    required this.historyEntryType,
    required this.historyEntryId,
    required this.body,
    required this.action,
    required this.attr,
    required this.oldValue,
    required this.conductorId,
    required this.conductorType,
  });
  
  factory History.fromJson(Map<String, Object?> json) => _$HistoryFromJson(json);
  
  final int id;
  @JsonKey(name: 'history_entry_type')
  final String historyEntryType;
  @JsonKey(name: 'history_entry_id')
  final int historyEntryId;
  final String body;
  final String? action;
  final String? attr;
  @JsonKey(name: 'old_value')
  final String? oldValue;
  @JsonKey(name: 'conductor_id')
  final int? conductorId;
  @JsonKey(name: 'conductor_type')
  final String conductorType;

  Map<String, Object?> toJson() => _$HistoryToJson(this);
}
