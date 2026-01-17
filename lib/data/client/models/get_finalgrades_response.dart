// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'finalgrade.dart';

part 'get_finalgrades_response.g.dart';

@JsonSerializable()
class GetFinalgradesResponse {
  const GetFinalgradesResponse({
    required this.data,
  });
  
  factory GetFinalgradesResponse.fromJson(Map<String, Object?> json) => _$GetFinalgradesResponseFromJson(json);
  
  final List<Finalgrade> data;

  Map<String, Object?> toJson() => _$GetFinalgradesResponseToJson(this);
}
