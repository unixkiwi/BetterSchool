// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'grade.dart';

part 'get_grades_response.g.dart';

@JsonSerializable()
class GetGradesResponse {
  const GetGradesResponse({
    required this.data,
  });
  
  factory GetGradesResponse.fromJson(Map<String, Object?> json) => _$GetGradesResponseFromJson(json);
  
  final List<Grade> data;

  Map<String, Object?> toJson() => _$GetGradesResponseToJson(this);
}
