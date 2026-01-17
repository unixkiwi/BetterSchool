// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_journal_weeks_nr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutJournalWeeksNrResponse _$PutJournalWeeksNrResponseFromJson(
  Map<String, dynamic> json,
) => PutJournalWeeksNrResponse(
  data: JournalWeek.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta102.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutJournalWeeksNrResponseToJson(
  PutJournalWeeksNrResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
