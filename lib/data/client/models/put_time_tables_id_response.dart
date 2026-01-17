// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table.dart';
import 'meta143.dart';

part 'put_time_tables_id_response.g.dart';

@JsonSerializable()
class PutTimeTablesIdResponse {
  const PutTimeTablesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutTimeTablesIdResponse.fromJson(Map<String, Object?> json) => _$PutTimeTablesIdResponseFromJson(json);
  
  final TimeTable data;
  final Meta143 meta;

  Map<String, Object?> toJson() => _$PutTimeTablesIdResponseToJson(this);
}
