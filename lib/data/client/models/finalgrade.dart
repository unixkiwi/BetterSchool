// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'history.dart';
import 'interval.dart';
import 'level.dart';
import 'student.dart';
import 'subject.dart';
import 'teacher.dart';

part 'finalgrade.g.dart';

@JsonSerializable()
class Finalgrade {
  const Finalgrade({
    required this.id,
    required this.calculationVerbal,
    required this.calculationFor,
    required this.subjectId,
    required this.intervalId,
    required this.teacherId,
    this.value,
    this.valueInt,
    this.valueCalc,
    this.valueCalcInt,
    this.calculationRule,
    this.levels,
    this.student,
    this.teacher,
    this.subject,
    this.interval,
    this.histories,
  });
  
  factory Finalgrade.fromJson(Map<String, Object?> json) => _$FinalgradeFromJson(json);
  
  final int id;
  final String? value;
  @JsonKey(name: 'value_int')
  final num? valueInt;
  @JsonKey(name: 'value_calc')
  final dynamic valueCalc;
  @JsonKey(name: 'value_calc_int')
  final String? valueCalcInt;
  @JsonKey(name: 'calculation_rule')
  final String? calculationRule;
  @JsonKey(name: 'calculation_verbal')
  final String? calculationVerbal;
  @JsonKey(name: 'calculation_for')
  final String calculationFor;
  @JsonKey(name: 'subject_id')
  final int subjectId;
  @JsonKey(name: 'interval_id')
  final int intervalId;
  @JsonKey(name: 'teacher_id')
  final int? teacherId;
  final List<Level>? levels;
  final Student? student;
  final Teacher? teacher;
  final Subject? subject;
  final Interval? interval;
  final List<History>? histories;

  Map<String, Object?> toJson() => _$FinalgradeToJson(this);
}
