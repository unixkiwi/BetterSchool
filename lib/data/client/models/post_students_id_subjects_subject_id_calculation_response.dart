// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'object0.dart';

part 'post_students_id_subjects_subject_id_calculation_response.g.dart';

@JsonSerializable()
class PostStudentsIdSubjectsSubjectIdCalculationResponse {
  const PostStudentsIdSubjectsSubjectIdCalculationResponse({
    required this.object0,
  });
  
  factory PostStudentsIdSubjectsSubjectIdCalculationResponse.fromJson(Map<String, Object?> json) => _$PostStudentsIdSubjectsSubjectIdCalculationResponseFromJson(json);
  
  /// Incorrect name has been replaced. Original name: `[data`.
  @JsonKey(name: '[data')
  final Object0 object0;

  Map<String, Object?> toJson() => _$PostStudentsIdSubjectsSubjectIdCalculationResponseToJson(this);
}
