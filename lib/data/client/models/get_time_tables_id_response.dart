// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table.dart';
import 'meta142.dart';

part 'get_time_tables_id_response.g.dart';

@JsonSerializable()
class GetTimeTablesIdResponse {
  const GetTimeTablesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTimeTablesIdResponse.fromJson(Map<String, Object?> json) => _$GetTimeTablesIdResponseFromJson(json);
  
  final TimeTable data;
  final Meta142 meta;

  Map<String, Object?> toJson() => _$GetTimeTablesIdResponseToJson(this);
}
