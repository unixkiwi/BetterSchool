// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'seating_plan.dart';
import 'meta109.dart';

part 'post_seating_plans_response.g.dart';

@JsonSerializable()
class PostSeatingPlansResponse {
  const PostSeatingPlansResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostSeatingPlansResponse.fromJson(Map<String, Object?> json) => _$PostSeatingPlansResponseFromJson(json);
  
  final SeatingPlan data;
  final Meta109 meta;

  Map<String, Object?> toJson() => _$PostSeatingPlansResponseToJson(this);
}
