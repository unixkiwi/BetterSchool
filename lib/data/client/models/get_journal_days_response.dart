// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_day.dart';

part 'get_journal_days_response.g.dart';

@JsonSerializable()
class GetJournalDaysResponse {
  const GetJournalDaysResponse({
    required this.data,
  });
  
  factory GetJournalDaysResponse.fromJson(Map<String, Object?> json) => _$GetJournalDaysResponseFromJson(json);
  
  final List<JournalDay> data;

  Map<String, Object?> toJson() => _$GetJournalDaysResponseToJson(this);
}
