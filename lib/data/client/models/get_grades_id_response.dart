// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'grade.dart';
import 'meta43.dart';

part 'get_grades_id_response.g.dart';

@JsonSerializable()
class GetGradesIdResponse {
  const GetGradesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetGradesIdResponse.fromJson(Map<String, Object?> json) => _$GetGradesIdResponseFromJson(json);
  
  final Grade data;
  final Meta43 meta;

  Map<String, Object?> toJson() => _$GetGradesIdResponseToJson(this);
}
