// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'finalgrade.dart';
import 'meta39.dart';

part 'get_finalgrades_id_response.g.dart';

@JsonSerializable()
class GetFinalgradesIdResponse {
  const GetFinalgradesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetFinalgradesIdResponse.fromJson(Map<String, Object?> json) => _$GetFinalgradesIdResponseFromJson(json);
  
  final Finalgrade data;
  final Meta39 meta;

  Map<String, Object?> toJson() => _$GetFinalgradesIdResponseToJson(this);
}
