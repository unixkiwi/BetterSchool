// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'school.dart';
import 'meta108.dart';

part 'post_schools_response.g.dart';

@JsonSerializable()
class PostSchoolsResponse {
  const PostSchoolsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostSchoolsResponse.fromJson(Map<String, Object?> json) => _$PostSchoolsResponseFromJson(json);
  
  final School data;
  final Meta108 meta;

  Map<String, Object?> toJson() => _$PostSchoolsResponseToJson(this);
}
