// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'school.dart';
import 'meta106.dart';

part 'get_school_response.g.dart';

@JsonSerializable()
class GetSchoolResponse {
  const GetSchoolResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetSchoolResponse.fromJson(Map<String, Object?> json) => _$GetSchoolResponseFromJson(json);
  
  final School data;
  final Meta106 meta;

  Map<String, Object?> toJson() => _$GetSchoolResponseToJson(this);
}
