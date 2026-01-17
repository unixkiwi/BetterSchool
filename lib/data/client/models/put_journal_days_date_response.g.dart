// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_journal_days_date_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutJournalDaysDateResponse _$PutJournalDaysDateResponseFromJson(
  Map<String, dynamic> json,
) => PutJournalDaysDateResponse(
  data: JournalDay.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta79.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutJournalDaysDateResponseToJson(
  PutJournalDaysDateResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
