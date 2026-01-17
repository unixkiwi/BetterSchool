// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table.dart';
import 'meta141.dart';

part 'post_time_tables_response.g.dart';

@JsonSerializable()
class PostTimeTablesResponse {
  const PostTimeTablesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostTimeTablesResponse.fromJson(Map<String, Object?> json) => _$PostTimeTablesResponseFromJson(json);
  
  final TimeTable data;
  final Meta141 meta;

  Map<String, Object?> toJson() => _$PostTimeTablesResponseToJson(this);
}
