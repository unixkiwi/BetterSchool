// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'year.dart';
import 'meta160.dart';

part 'get_years_id_response.g.dart';

@JsonSerializable()
class GetYearsIdResponse {
  const GetYearsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetYearsIdResponse.fromJson(Map<String, Object?> json) => _$GetYearsIdResponseFromJson(json);
  
  final Year data;
  final Meta160 meta;

  Map<String, Object?> toJson() => _$GetYearsIdResponseToJson(this);
}
