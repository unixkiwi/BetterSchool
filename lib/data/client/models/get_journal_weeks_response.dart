// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_week.dart';

part 'get_journal_weeks_response.g.dart';

@JsonSerializable()
class GetJournalWeeksResponse {
  const GetJournalWeeksResponse({
    required this.data,
  });
  
  factory GetJournalWeeksResponse.fromJson(Map<String, Object?> json) => _$GetJournalWeeksResponseFromJson(json);
  
  final List<JournalWeek> data;

  Map<String, Object?> toJson() => _$GetJournalWeeksResponseToJson(this);
}
