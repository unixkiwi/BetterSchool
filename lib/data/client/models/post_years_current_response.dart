// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'year.dart';
import 'meta163.dart';

part 'post_years_current_response.g.dart';

@JsonSerializable()
class PostYearsCurrentResponse {
  const PostYearsCurrentResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostYearsCurrentResponse.fromJson(Map<String, Object?> json) => _$PostYearsCurrentResponseFromJson(json);
  
  final Year data;
  final Meta163 meta;

  Map<String, Object?> toJson() => _$PostYearsCurrentResponseToJson(this);
}
