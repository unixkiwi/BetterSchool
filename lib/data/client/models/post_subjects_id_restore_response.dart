// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'subject.dart';
import 'meta126.dart';

part 'post_subjects_id_restore_response.g.dart';

@JsonSerializable()
class PostSubjectsIdRestoreResponse {
  const PostSubjectsIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostSubjectsIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostSubjectsIdRestoreResponseFromJson(json);
  
  final Subject data;
  final Meta126 meta;

  Map<String, Object?> toJson() => _$PostSubjectsIdRestoreResponseToJson(this);
}
