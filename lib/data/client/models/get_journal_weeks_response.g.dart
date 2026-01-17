// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_journal_weeks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetJournalWeeksResponse _$GetJournalWeeksResponseFromJson(
  Map<String, dynamic> json,
) => GetJournalWeeksResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => JournalWeek.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetJournalWeeksResponseToJson(
  GetJournalWeeksResponse instance,
) => <String, dynamic>{'data': instance.data};
