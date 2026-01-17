// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';
import 'meta139.dart';

part 'get_teachers_id_response.g.dart';

@JsonSerializable()
class GetTeachersIdResponse {
  const GetTeachersIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTeachersIdResponse.fromJson(Map<String, Object?> json) => _$GetTeachersIdResponseFromJson(json);
  
  final Teacher data;
  final Meta139 meta;

  Map<String, Object?> toJson() => _$GetTeachersIdResponseToJson(this);
}
