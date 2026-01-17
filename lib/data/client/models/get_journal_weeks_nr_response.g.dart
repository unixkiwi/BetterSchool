// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_journal_weeks_nr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetJournalWeeksNrResponse _$GetJournalWeeksNrResponseFromJson(
  Map<String, dynamic> json,
) => GetJournalWeeksNrResponse(
  data: JournalWeek.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta103.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetJournalWeeksNrResponseToJson(
  GetJournalWeeksNrResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
