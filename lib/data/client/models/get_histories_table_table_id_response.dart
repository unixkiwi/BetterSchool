// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'history.dart';
import 'meta59.dart';
import 'links6.dart';

part 'get_histories_table_table_id_response.g.dart';

@JsonSerializable()
class GetHistoriesTableTableIdResponse {
  const GetHistoriesTableTableIdResponse({
    required this.data,
    required this.meta,
    required this.links,
  });
  
  factory GetHistoriesTableTableIdResponse.fromJson(Map<String, Object?> json) => _$GetHistoriesTableTableIdResponseFromJson(json);
  
  final List<History> data;
  final Meta59 meta;
  final Links6 links;

  Map<String, Object?> toJson() => _$GetHistoriesTableTableIdResponseToJson(this);
}
