// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'collection.dart';
import 'level.dart';
import 'student.dart';
import 'subject.dart';
import 'tag.dart';
import 'teacher.dart';

part 'group.g.dart';

@JsonSerializable()
class Group {
  const Group({
    required this.id,
    required this.localId,
    required this.name,
    required this.meta,
    required this.levelId,
    required this.yearId,
    this.custom,
    this.level,
    this.levels,
    this.subjects,
    this.collections,
    this.teachers,
    this.students,
    this.tags,
  });
  
  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);
  
  final int id;
  @JsonKey(name: 'local_id')
  final String? localId;
  final String name;
  final int meta;
  final String? custom;
  @JsonKey(name: 'level_id')
  final int? levelId;
  @JsonKey(name: 'year_id')
  final int yearId;
  final Level? level;
  final List<Level>? levels;
  final List<Subject>? subjects;
  final List<Collection>? collections;
  final List<Teacher>? teachers;
  final List<Student>? students;
  final List<Tag>? tags;

  Map<String, Object?> toJson() => _$GroupToJson(this);
}
