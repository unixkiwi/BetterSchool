// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_level_request.g.dart';

@JsonSerializable()
class UpdateLevelRequest {
  const UpdateLevelRequest({
    required this.name,
    this.intervalType,
    this.timeType,
    this.bestGrade,
    this.worstGrade,
  });
  
  factory UpdateLevelRequest.fromJson(Map<String, Object?> json) => _$UpdateLevelRequestFromJson(json);
  
  final String name;
  @JsonKey(name: 'interval_type')
  final String? intervalType;
  @JsonKey(name: 'time_type')
  final String? timeType;
  @JsonKey(name: 'best_grade')
  final int? bestGrade;
  @JsonKey(name: 'worst_grade')
  final int? worstGrade;

  Map<String, Object?> toJson() => _$UpdateLevelRequestToJson(this);
}
