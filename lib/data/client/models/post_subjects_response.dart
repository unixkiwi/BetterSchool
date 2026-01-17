// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'subject.dart';
import 'meta127.dart';

part 'post_subjects_response.g.dart';

@JsonSerializable()
class PostSubjectsResponse {
  const PostSubjectsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostSubjectsResponse.fromJson(Map<String, Object?> json) => _$PostSubjectsResponseFromJson(json);
  
  final Subject data;
  final Meta127 meta;

  Map<String, Object?> toJson() => _$PostSubjectsResponseToJson(this);
}
