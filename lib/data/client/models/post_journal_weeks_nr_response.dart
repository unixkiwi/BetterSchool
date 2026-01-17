// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_week.dart';
import 'meta101.dart';

part 'post_journal_weeks_nr_response.g.dart';

@JsonSerializable()
class PostJournalWeeksNrResponse {
  const PostJournalWeeksNrResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalWeeksNrResponse.fromJson(Map<String, Object?> json) => _$PostJournalWeeksNrResponseFromJson(json);
  
  final JournalWeek data;
  final Meta101 meta;

  Map<String, Object?> toJson() => _$PostJournalWeeksNrResponseToJson(this);
}
