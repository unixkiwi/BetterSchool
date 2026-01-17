// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist_student.dart';
import 'checklist_type.dart';
import 'group.dart';
import 'teacher.dart';

part 'checklist.g.dart';

@JsonSerializable()
class Checklist {
  const Checklist({
    required this.id,
    required this.name,
    required this.date,
    required this.description,
    required this.forValue,
    required this.uncheckedCount,
    required this.checkedCount,
    required this.singleGroup,
    this.type,
    this.groups,
    this.checks,
    this.teacher,
  });
  
  factory Checklist.fromJson(Map<String, Object?> json) => _$ChecklistFromJson(json);
  
  final int id;
  final String name;
  final String date;
  final String? description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final String forValue;
  @JsonKey(name: 'unchecked_count')
  final String uncheckedCount;
  @JsonKey(name: 'checked_count')
  final String checkedCount;
  @JsonKey(name: 'single_group')
  final bool singleGroup;
  final ChecklistType? type;
  final List<Group>? groups;
  final List<ChecklistStudent>? checks;
  final Teacher? teacher;

  Map<String, Object?> toJson() => _$ChecklistToJson(this);
}
