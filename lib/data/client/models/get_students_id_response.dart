// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta124.dart';

part 'get_students_id_response.g.dart';

@JsonSerializable()
class GetStudentsIdResponse {
  const GetStudentsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetStudentsIdResponse.fromJson(Map<String, Object?> json) => _$GetStudentsIdResponseFromJson(json);
  
  final Student data;
  final Meta124 meta;

  Map<String, Object?> toJson() => _$GetStudentsIdResponseToJson(this);
}
