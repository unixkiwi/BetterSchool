// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'tag.dart';
import 'teacher.dart';

part 'checklist_student.g.dart';

@JsonSerializable()
class ChecklistStudent {
  const ChecklistStudent({
    required this.id,
    required this.studentId,
    required this.forename,
    required this.nickname,
    required this.name,
    required this.gender,
    required this.checked,
    required this.note,
    required this.checkedAt,
    this.teacher,
    this.tags,
  });
  
  factory ChecklistStudent.fromJson(Map<String, Object?> json) => _$ChecklistStudentFromJson(json);
  
  final String id;
  @JsonKey(name: 'student_id')
  final int studentId;
  final String forename;
  final String nickname;
  final String name;
  final String gender;
  final String checked;
  final String note;
  @JsonKey(name: 'checked_at')
  final String? checkedAt;

  /// is nullable
  final Teacher? teacher;
  final List<Tag>? tags;

  Map<String, Object?> toJson() => _$ChecklistStudentToJson(this);
}
