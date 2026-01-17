// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'history.dart';
import 'meta58.dart';
import 'links4.dart';

part 'get_histories_table_table_response.g.dart';

@JsonSerializable()
class GetHistoriesTableTableResponse {
  const GetHistoriesTableTableResponse({
    required this.data,
    required this.meta,
    required this.links,
  });
  
  factory GetHistoriesTableTableResponse.fromJson(Map<String, Object?> json) => _$GetHistoriesTableTableResponseFromJson(json);
  
  final List<History> data;
  final Meta58 meta;
  final Links4 links;

  Map<String, Object?> toJson() => _$GetHistoriesTableTableResponseToJson(this);
}
