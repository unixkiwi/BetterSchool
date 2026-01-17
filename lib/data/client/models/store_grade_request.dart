// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_grade_request.g.dart';

@JsonSerializable()
class StoreGradeRequest {
  const StoreGradeRequest({
    required this.value,
    required this.studentId,
    required this.collectionId,
    this.givenAt,
  });
  
  factory StoreGradeRequest.fromJson(Map<String, Object?> json) => _$StoreGradeRequestFromJson(json);
  
  final String value;
  @JsonKey(name: 'given_at')
  final DateTime? givenAt;
  @JsonKey(name: 'student_id')
  final int studentId;
  @JsonKey(name: 'collection_id')
  final int collectionId;

  Map<String, Object?> toJson() => _$StoreGradeRequestToJson(this);
}
