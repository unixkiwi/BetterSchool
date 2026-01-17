// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'room.dart';
import 'seating_plan_student.dart';

part 'seating_plan.g.dart';

@JsonSerializable()
class SeatingPlan {
  const SeatingPlan({
    required this.id,
    required this.width,
    required this.height,
    this.room,
    this.group,
    this.seats,
  });
  
  factory SeatingPlan.fromJson(Map<String, Object?> json) => _$SeatingPlanFromJson(json);
  
  final int id;
  final int width;
  final int height;
  final Room? room;
  final Group? group;
  final List<SeatingPlanStudent>? seats;

  Map<String, Object?> toJson() => _$SeatingPlanToJson(this);
}
