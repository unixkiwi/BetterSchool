// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_journal_days_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetJournalDaysResponse _$GetJournalDaysResponseFromJson(
  Map<String, dynamic> json,
) => GetJournalDaysResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => JournalDay.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetJournalDaysResponseToJson(
  GetJournalDaysResponse instance,
) => <String, dynamic>{'data': instance.data};
