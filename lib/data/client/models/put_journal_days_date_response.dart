// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_day.dart';
import 'meta79.dart';

part 'put_journal_days_date_response.g.dart';

@JsonSerializable()
class PutJournalDaysDateResponse {
  const PutJournalDaysDateResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutJournalDaysDateResponse.fromJson(Map<String, Object?> json) => _$PutJournalDaysDateResponseFromJson(json);
  
  final JournalDay data;
  final Meta79 meta;

  Map<String, Object?> toJson() => _$PutJournalDaysDateResponseToJson(this);
}
