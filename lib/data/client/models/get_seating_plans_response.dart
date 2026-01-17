// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'seating_plan.dart';

part 'get_seating_plans_response.g.dart';

@JsonSerializable()
class GetSeatingPlansResponse {
  const GetSeatingPlansResponse({
    required this.data,
  });
  
  factory GetSeatingPlansResponse.fromJson(Map<String, Object?> json) => _$GetSeatingPlansResponseFromJson(json);
  
  final List<SeatingPlan> data;

  Map<String, Object?> toJson() => _$GetSeatingPlansResponseToJson(this);
}
