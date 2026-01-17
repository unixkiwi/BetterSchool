// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_grade_request.g.dart';

@JsonSerializable()
class UpdateGradeRequest {
  const UpdateGradeRequest({
    required this.value,
  });
  
  factory UpdateGradeRequest.fromJson(Map<String, Object?> json) => _$UpdateGradeRequestFromJson(json);
  
  final String value;

  Map<String, Object?> toJson() => _$UpdateGradeRequestToJson(this);
}
