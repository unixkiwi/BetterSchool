// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'journal_day.dart';
import 'journal_lesson_student.dart';
import 'journal_note.dart';
import 'room.dart';
import 'student.dart';
import 'subject.dart';
import 'teacher.dart';
import 'time_table_time_lesson.dart';

part 'journal_lesson.g.dart';

@JsonSerializable()
class JournalLesson {
  const JournalLesson({
    required this.id,
    required this.nr,
    required this.status,
    this.ids,
    this.nrs,
    this.source,
    this.times,
    this.subject,
    this.group,
    this.students,
    this.statuses,
    this.teachers,
    this.rooms,
    this.notes,
    this.day,
    this.time,
    this.owner,
  });
  
  factory JournalLesson.fromJson(Map<String, Object?> json) => _$JournalLessonFromJson(json);
  
  final String id;
  final String nr;
  final String status;
  final String? ids;
  final String? nrs;
  final String? source;
  final List<TimeTableTimeLesson>? times;
  final Subject? subject;
  final Group? group;
  final List<Student>? students;
  final List<JournalLessonStudent>? statuses;
  final List<Teacher>? teachers;
  final List<Room>? rooms;
  final List<JournalNote>? notes;
  final JournalDay? day;
  final TimeTableTimeLesson? time;
  final Teacher? owner;

  Map<String, Object?> toJson() => _$JournalLessonToJson(this);
}
