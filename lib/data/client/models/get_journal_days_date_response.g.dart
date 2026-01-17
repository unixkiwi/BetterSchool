// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_journal_days_date_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetJournalDaysDateResponse _$GetJournalDaysDateResponseFromJson(
  Map<String, dynamic> json,
) => GetJournalDaysDateResponse(
  data: JournalDay.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta80.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetJournalDaysDateResponseToJson(
  GetJournalDaysDateResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
