// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_type.dart';
import 'meta7.dart';

part 'post_types_absence_response.g.dart';

@JsonSerializable()
class PostTypesAbsenceResponse {
  const PostTypesAbsenceResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostTypesAbsenceResponse.fromJson(Map<String, Object?> json) => _$PostTypesAbsenceResponseFromJson(json);
  
  final AbsenceType data;
  final Meta7 meta;

  Map<String, Object?> toJson() => _$PostTypesAbsenceResponseToJson(this);
}
