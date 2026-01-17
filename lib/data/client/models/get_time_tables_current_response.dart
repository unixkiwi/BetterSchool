// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table.dart';
import 'meta144.dart';

part 'get_time_tables_current_response.g.dart';

@JsonSerializable()
class GetTimeTablesCurrentResponse {
  const GetTimeTablesCurrentResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTimeTablesCurrentResponse.fromJson(Map<String, Object?> json) => _$GetTimeTablesCurrentResponseFromJson(json);
  
  final TimeTable data;
  final Meta144 meta;

  Map<String, Object?> toJson() => _$GetTimeTablesCurrentResponseToJson(this);
}
