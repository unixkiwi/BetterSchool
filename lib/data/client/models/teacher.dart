// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'collection.dart';
import 'grade.dart';
import 'subject.dart';
import 'tag.dart';

part 'teacher.g.dart';

@JsonSerializable()
class Teacher {
  const Teacher({
    required this.id,
    required this.localId,
    required this.forename,
    required this.name,
    this.role,
    this.token,
    this.tokenValidUntil,
    this.deleted,
    this.grades,
    this.collections,
    this.subjects,
    this.tags,
    this.valid,
    this.notes,
  });
  
  factory Teacher.fromJson(Map<String, Object?> json) => _$TeacherFromJson(json);
  
  final int id;
  @JsonKey(name: 'local_id')
  final String? localId;
  final String? forename;
  final String? name;
  final String? role;
  final String? token;
  @JsonKey(name: 'token_valid_until')
  final String? tokenValidUntil;
  final bool? deleted;

  /// https:laravel.com/docs/5.8/eloquent-relationships#lazy-eager-loading
  final List<Grade>? grades;
  final List<Collection>? collections;
  final List<Subject>? subjects;
  final List<Tag>? tags;
  final String? valid;
  final String? notes;

  Map<String, Object?> toJson() => _$TeacherToJson(this);
}
