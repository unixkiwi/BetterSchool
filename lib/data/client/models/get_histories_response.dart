// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'history.dart';
import 'meta57.dart';
import 'links2.dart';

part 'get_histories_response.g.dart';

@JsonSerializable()
class GetHistoriesResponse {
  const GetHistoriesResponse({
    required this.data,
    required this.meta,
    required this.links,
  });
  
  factory GetHistoriesResponse.fromJson(Map<String, Object?> json) => _$GetHistoriesResponseFromJson(json);
  
  final List<History> data;
  final Meta57 meta;
  final Links2 links;

  Map<String, Object?> toJson() => _$GetHistoriesResponseToJson(this);
}
