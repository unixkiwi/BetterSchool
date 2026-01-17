// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_day.dart';
import 'journal_note.dart';

part 'journal_week.g.dart';

@JsonSerializable()
class JournalWeek {
  const JournalWeek({
    required this.id,
    required this.calendarYear,
    required this.nr,
    required this.yearId,
    this.days,
    this.notes,
  });
  
  factory JournalWeek.fromJson(Map<String, Object?> json) => _$JournalWeekFromJson(json);
  
  final String id;
  @JsonKey(name: 'calendar_year')
  final int calendarYear;
  final int nr;
  @JsonKey(name: 'year_id')
  final String yearId;
  final List<JournalDay>? days;
  final List<JournalNote>? notes;

  Map<String, Object?> toJson() => _$JournalWeekToJson(this);
}
