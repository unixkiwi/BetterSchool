// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'school.dart';
import 'meta105.dart';

part 'put_school_response.g.dart';

@JsonSerializable()
class PutSchoolResponse {
  const PutSchoolResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutSchoolResponse.fromJson(Map<String, Object?> json) => _$PutSchoolResponseFromJson(json);
  
  final School data;
  final Meta105 meta;

  Map<String, Object?> toJson() => _$PutSchoolResponseToJson(this);
}
