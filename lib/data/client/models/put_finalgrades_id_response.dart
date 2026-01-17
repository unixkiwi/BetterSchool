// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'finalgrade.dart';
import 'meta38.dart';

part 'put_finalgrades_id_response.g.dart';

@JsonSerializable()
class PutFinalgradesIdResponse {
  const PutFinalgradesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutFinalgradesIdResponse.fromJson(Map<String, Object?> json) => _$PutFinalgradesIdResponseFromJson(json);
  
  final Finalgrade data;
  final Meta38 meta;

  Map<String, Object?> toJson() => _$PutFinalgradesIdResponseToJson(this);
}
