// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checks.dart';
import 'store_checklist_request_for_enum.dart';

part 'store_checklist_request.g.dart';

@JsonSerializable()
class StoreChecklistRequest {
  const StoreChecklistRequest({
    required this.name,
    required this.date,
    required this.forEnum,
    required this.groupIds,
    this.description,
    this.typeId,
    this.checks,
  });
  
  factory StoreChecklistRequest.fromJson(Map<String, Object?> json) => _$StoreChecklistRequestFromJson(json);
  
  final String name;
  final DateTime date;
  final String? description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final StoreChecklistRequestForEnum forEnum;
  @JsonKey(name: 'type_id')
  final int? typeId;
  @JsonKey(name: 'group_ids')
  final List<int> groupIds;
  final Checks? checks;

  Map<String, Object?> toJson() => _$StoreChecklistRequestToJson(this);
}
