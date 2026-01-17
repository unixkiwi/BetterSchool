// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checks2.dart';
import 'update_checklist_request_for_enum.dart';

part 'update_checklist_request.g.dart';

@JsonSerializable()
class UpdateChecklistRequest {
  const UpdateChecklistRequest({
    required this.name,
    required this.date,
    required this.forEnum,
    this.description,
    this.typeId,
    this.groupIds,
    this.checks,
  });
  
  factory UpdateChecklistRequest.fromJson(Map<String, Object?> json) => _$UpdateChecklistRequestFromJson(json);
  
  final String name;
  final DateTime date;
  final String? description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final UpdateChecklistRequestForEnum forEnum;
  @JsonKey(name: 'type_id')
  final int? typeId;
  @JsonKey(name: 'group_ids')
  final List<int?>? groupIds;
  final Checks2? checks;

  Map<String, Object?> toJson() => _$UpdateChecklistRequestToJson(this);
}
