// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta123.dart';

part 'put_students_id_response.g.dart';

@JsonSerializable()
class PutStudentsIdResponse {
  const PutStudentsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutStudentsIdResponse.fromJson(Map<String, Object?> json) => _$PutStudentsIdResponseFromJson(json);
  
  final Student data;
  final Meta123 meta;

  Map<String, Object?> toJson() => _$PutStudentsIdResponseToJson(this);
}
