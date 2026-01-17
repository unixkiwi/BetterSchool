// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';

part 'get_students_response.g.dart';

@JsonSerializable()
class GetStudentsResponse {
  const GetStudentsResponse({
    required this.data,
  });
  
  factory GetStudentsResponse.fromJson(Map<String, Object?> json) => _$GetStudentsResponseFromJson(json);
  
  final List<Student> data;

  Map<String, Object?> toJson() => _$GetStudentsResponseToJson(this);
}
