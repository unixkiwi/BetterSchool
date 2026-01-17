// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'year.dart';
import 'meta161.dart';

part 'put_years_id_response.g.dart';

@JsonSerializable()
class PutYearsIdResponse {
  const PutYearsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutYearsIdResponse.fromJson(Map<String, Object?> json) => _$PutYearsIdResponseFromJson(json);
  
  final Year data;
  final Meta161 meta;

  Map<String, Object?> toJson() => _$PutYearsIdResponseToJson(this);
}
