// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_week.dart';
import 'meta102.dart';

part 'put_journal_weeks_nr_response.g.dart';

@JsonSerializable()
class PutJournalWeeksNrResponse {
  const PutJournalWeeksNrResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutJournalWeeksNrResponse.fromJson(Map<String, Object?> json) => _$PutJournalWeeksNrResponseFromJson(json);
  
  final JournalWeek data;
  final Meta102 meta;

  Map<String, Object?> toJson() => _$PutJournalWeeksNrResponseToJson(this);
}
