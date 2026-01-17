// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_journal_days_date_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostJournalDaysDateResponse _$PostJournalDaysDateResponseFromJson(
  Map<String, dynamic> json,
) => PostJournalDaysDateResponse(
  data: JournalDay.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta78.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostJournalDaysDateResponseToJson(
  PostJournalDaysDateResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
