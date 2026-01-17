// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_lesson.dart';
import 'journal_note.dart';
import 'journal_week.dart';

part 'journal_day.g.dart';

@JsonSerializable()
class JournalDay {
  const JournalDay({
    required this.id,
    required this.date,
    required this.timeName,
    this.lessons,
    this.notes,
    this.week,
  });
  
  factory JournalDay.fromJson(Map<String, Object?> json) => _$JournalDayFromJson(json);
  
  final String id;
  final String date;
  @JsonKey(name: 'time_name')
  final String timeName;
  final List<JournalLesson>? lessons;
  final List<JournalNote>? notes;
  final JournalWeek? week;

  Map<String, Object?> toJson() => _$JournalDayToJson(this);
}
