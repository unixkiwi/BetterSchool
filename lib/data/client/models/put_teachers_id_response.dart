// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';
import 'meta138.dart';

part 'put_teachers_id_response.g.dart';

@JsonSerializable()
class PutTeachersIdResponse {
  const PutTeachersIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutTeachersIdResponse.fromJson(Map<String, Object?> json) => _$PutTeachersIdResponseFromJson(json);
  
  final Teacher data;
  final Meta138 meta;

  Map<String, Object?> toJson() => _$PutTeachersIdResponseToJson(this);
}
