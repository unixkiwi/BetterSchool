// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'tag.dart';

part 'seating_plan_student.g.dart';

@JsonSerializable()
class SeatingPlanStudent {
  const SeatingPlanStudent({
    required this.id,
    required this.studentId,
    required this.forename,
    required this.nickname,
    required this.name,
    required this.gender,
    required this.x,
    required this.y,
    required this.changedRecently,
    this.metaGroups,
    this.tags,
  });
  
  factory SeatingPlanStudent.fromJson(Map<String, Object?> json) => _$SeatingPlanStudentFromJson(json);
  
  final String id;
  @JsonKey(name: 'student_id')
  final int studentId;
  final String forename;
  final String nickname;
  final String name;
  final String gender;
  final String x;
  final String y;
  @JsonKey(name: 'changed_recently')
  final bool changedRecently;
  @JsonKey(name: 'meta_groups')
  final List<Group>? metaGroups;
  final List<Tag>? tags;

  Map<String, Object?> toJson() => _$SeatingPlanStudentToJson(this);
}
