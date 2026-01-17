// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'subject.dart';

part 'get_subjects_response.g.dart';

@JsonSerializable()
class GetSubjectsResponse {
  const GetSubjectsResponse({
    required this.data,
  });
  
  factory GetSubjectsResponse.fromJson(Map<String, Object?> json) => _$GetSubjectsResponseFromJson(json);
  
  final List<Subject> data;

  Map<String, Object?> toJson() => _$GetSubjectsResponseToJson(this);
}
