// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'year.dart';
import 'meta159.dart';

part 'post_years_response.g.dart';

@JsonSerializable()
class PostYearsResponse {
  const PostYearsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostYearsResponse.fromJson(Map<String, Object?> json) => _$PostYearsResponseFromJson(json);
  
  final Year data;
  final Meta159 meta;

  Map<String, Object?> toJson() => _$PostYearsResponseToJson(this);
}
