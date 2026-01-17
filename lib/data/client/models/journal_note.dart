// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'journal_lesson_student.dart';
import 'journal_note_type.dart';
import 'teacher.dart';

part 'journal_note.g.dart';

@JsonSerializable()
class JournalNote {
  const JournalNote({
    required this.id,
    required this.description,
    required this.forValue,
    required this.notableType,
    this.ids,
    this.type,
    this.group,
    this.source,
    this.notable,
    this.teacher,
  });
  
  factory JournalNote.fromJson(Map<String, Object?> json) => _$JournalNoteFromJson(json);
  
  final String id;
  final String? ids;
  final String description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final String forValue;
  final JournalNoteType? type;
  final Group? group;
  final String? source;
  final JournalLessonStudent? notable;
  final Teacher? teacher;
  @JsonKey(name: 'notable_type')
  final String notableType;

  Map<String, Object?> toJson() => _$JournalNoteToJson(this);
}
