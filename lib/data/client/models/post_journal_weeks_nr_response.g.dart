// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_journal_weeks_nr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostJournalWeeksNrResponse _$PostJournalWeeksNrResponseFromJson(
  Map<String, dynamic> json,
) => PostJournalWeeksNrResponse(
  data: JournalWeek.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta101.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostJournalWeeksNrResponseToJson(
  PostJournalWeeksNrResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
