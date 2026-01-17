// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_day.dart';
import 'meta80.dart';

part 'get_journal_days_date_response.g.dart';

@JsonSerializable()
class GetJournalDaysDateResponse {
  const GetJournalDaysDateResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetJournalDaysDateResponse.fromJson(Map<String, Object?> json) => _$GetJournalDaysDateResponseFromJson(json);
  
  final JournalDay data;
  final Meta80 meta;

  Map<String, Object?> toJson() => _$GetJournalDaysDateResponseToJson(this);
}
