// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'subject.dart';

part 'post_subjects_batch_response.g.dart';

@JsonSerializable()
class PostSubjectsBatchResponse {
  const PostSubjectsBatchResponse({
    required this.data,
  });
  
  factory PostSubjectsBatchResponse.fromJson(Map<String, Object?> json) => _$PostSubjectsBatchResponseFromJson(json);
  
  final List<Subject> data;

  Map<String, Object?> toJson() => _$PostSubjectsBatchResponseToJson(this);
}
