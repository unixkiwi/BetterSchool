// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_week.dart';
import 'meta103.dart';

part 'get_journal_weeks_nr_response.g.dart';

@JsonSerializable()
class GetJournalWeeksNrResponse {
  const GetJournalWeeksNrResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetJournalWeeksNrResponse.fromJson(Map<String, Object?> json) => _$GetJournalWeeksNrResponseFromJson(json);
  
  final JournalWeek data;
  final Meta103 meta;

  Map<String, Object?> toJson() => _$GetJournalWeeksNrResponseToJson(this);
}
