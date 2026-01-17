// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'subject.dart';
import 'meta128.dart';

part 'get_subjects_id_response.g.dart';

@JsonSerializable()
class GetSubjectsIdResponse {
  const GetSubjectsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetSubjectsIdResponse.fromJson(Map<String, Object?> json) => _$GetSubjectsIdResponseFromJson(json);
  
  final Subject data;
  final Meta128 meta;

  Map<String, Object?> toJson() => _$GetSubjectsIdResponseToJson(this);
}
