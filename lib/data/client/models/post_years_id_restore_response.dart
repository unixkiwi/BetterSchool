// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'year.dart';
import 'meta162.dart';

part 'post_years_id_restore_response.g.dart';

@JsonSerializable()
class PostYearsIdRestoreResponse {
  const PostYearsIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostYearsIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostYearsIdRestoreResponseFromJson(json);
  
  final Year data;
  final Meta162 meta;

  Map<String, Object?> toJson() => _$PostYearsIdRestoreResponseToJson(this);
}
