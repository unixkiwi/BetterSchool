// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'grade.dart';
import 'group.dart';
import 'history.dart';
import 'interval.dart';
import 'subject.dart';
import 'teacher.dart';

part 'collection.g.dart';

@JsonSerializable()
class Collection {
  const Collection({
    required this.id,
    required this.type,
    required this.weighting,
    required this.name,
    required this.givenAt,
    required this.visibleFrom,
    required this.intervalId,
    required this.subjectId,
    required this.teacherId,
    this.interval,
    this.group,
    this.subject,
    this.teacher,
    this.grades,
    this.histories,
  });
  
  factory Collection.fromJson(Map<String, Object?> json) => _$CollectionFromJson(json);
  
  final int id;
  final String type;
  final int weighting;
  final String? name;
  @JsonKey(name: 'given_at')
  final String givenAt;
  @JsonKey(name: 'visible_from')
  final String? visibleFrom;
  @JsonKey(name: 'interval_id')
  final int intervalId;
  @JsonKey(name: 'subject_id')
  final int subjectId;
  @JsonKey(name: 'teacher_id')
  final int teacherId;
  final Interval? interval;
  final Group? group;
  final Subject? subject;
  final Teacher? teacher;
  final List<Grade>? grades;
  final List<History>? histories;

  Map<String, Object?> toJson() => _$CollectionToJson(this);
}
