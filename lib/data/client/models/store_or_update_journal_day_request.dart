// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_or_update_journal_day_request.g.dart';

@JsonSerializable()
class StoreOrUpdateJournalDayRequest {
  const StoreOrUpdateJournalDayRequest({
    this.timeName,
  });
  
  factory StoreOrUpdateJournalDayRequest.fromJson(Map<String, Object?> json) => _$StoreOrUpdateJournalDayRequestFromJson(json);
  
  @JsonKey(name: 'time_name')
  final String? timeName;

  Map<String, Object?> toJson() => _$StoreOrUpdateJournalDayRequestToJson(this);
}
