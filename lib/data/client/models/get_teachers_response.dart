// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';

part 'get_teachers_response.g.dart';

@JsonSerializable()
class GetTeachersResponse {
  const GetTeachersResponse({
    required this.data,
  });
  
  factory GetTeachersResponse.fromJson(Map<String, Object?> json) => _$GetTeachersResponseFromJson(json);
  
  final List<Teacher> data;

  Map<String, Object?> toJson() => _$GetTeachersResponseToJson(this);
}
