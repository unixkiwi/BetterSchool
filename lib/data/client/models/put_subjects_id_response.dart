// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'subject.dart';
import 'meta129.dart';

part 'put_subjects_id_response.g.dart';

@JsonSerializable()
class PutSubjectsIdResponse {
  const PutSubjectsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutSubjectsIdResponse.fromJson(Map<String, Object?> json) => _$PutSubjectsIdResponseFromJson(json);
  
  final Subject data;
  final Meta129 meta;

  Map<String, Object?> toJson() => _$PutSubjectsIdResponseToJson(this);
}
