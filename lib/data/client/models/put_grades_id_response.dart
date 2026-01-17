// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'grade.dart';
import 'meta42.dart';

part 'put_grades_id_response.g.dart';

@JsonSerializable()
class PutGradesIdResponse {
  const PutGradesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutGradesIdResponse.fromJson(Map<String, Object?> json) => _$PutGradesIdResponseFromJson(json);
  
  final Grade data;
  final Meta42 meta;

  Map<String, Object?> toJson() => _$PutGradesIdResponseToJson(this);
}
