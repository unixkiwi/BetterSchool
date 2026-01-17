// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist.dart';
import 'meta21.dart';

part 'put_checklists_checklist_response.g.dart';

@JsonSerializable()
class PutChecklistsChecklistResponse {
  const PutChecklistsChecklistResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutChecklistsChecklistResponse.fromJson(Map<String, Object?> json) => _$PutChecklistsChecklistResponseFromJson(json);
  
  final Checklist data;
  final Meta21 meta;

  Map<String, Object?> toJson() => _$PutChecklistsChecklistResponseToJson(this);
}
