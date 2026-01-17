// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence.dart';
import 'meta.dart';

part 'post_absences_response.g.dart';

@JsonSerializable()
class PostAbsencesResponse {
  const PostAbsencesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostAbsencesResponse.fromJson(Map<String, Object?> json) => _$PostAbsencesResponseFromJson(json);
  
  final Absence data;
  final Meta meta;

  Map<String, Object?> toJson() => _$PostAbsencesResponseToJson(this);
}
