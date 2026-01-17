// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist.dart';

part 'checklist_type.g.dart';

@JsonSerializable()
class ChecklistType {
  const ChecklistType({
    required this.id,
    required this.name,
    this.checklists,
  });
  
  factory ChecklistType.fromJson(Map<String, Object?> json) => _$ChecklistTypeFromJson(json);
  
  final int id;
  final String name;
  final List<Checklist>? checklists;

  Map<String, Object?> toJson() => _$ChecklistTypeToJson(this);
}
