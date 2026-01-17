// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'school.dart';

part 'get_schools_response.g.dart';

@JsonSerializable()
class GetSchoolsResponse {
  const GetSchoolsResponse({
    required this.data,
  });
  
  factory GetSchoolsResponse.fromJson(Map<String, Object?> json) => _$GetSchoolsResponseFromJson(json);
  
  final List<School> data;

  Map<String, Object?> toJson() => _$GetSchoolsResponseToJson(this);
}
