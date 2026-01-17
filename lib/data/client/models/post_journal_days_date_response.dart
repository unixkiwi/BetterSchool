// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_day.dart';
import 'meta78.dart';

part 'post_journal_days_date_response.g.dart';

@JsonSerializable()
class PostJournalDaysDateResponse {
  const PostJournalDaysDateResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalDaysDateResponse.fromJson(Map<String, Object?> json) => _$PostJournalDaysDateResponseFromJson(json);
  
  final JournalDay data;
  final Meta78 meta;

  Map<String, Object?> toJson() => _$PostJournalDaysDateResponseToJson(this);
}
