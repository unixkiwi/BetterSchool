// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table.dart';

part 'get_time_tables_response.g.dart';

@JsonSerializable()
class GetTimeTablesResponse {
  const GetTimeTablesResponse({
    required this.data,
  });
  
  factory GetTimeTablesResponse.fromJson(Map<String, Object?> json) => _$GetTimeTablesResponseFromJson(json);
  
  final List<TimeTable> data;

  Map<String, Object?> toJson() => _$GetTimeTablesResponseToJson(this);
}
