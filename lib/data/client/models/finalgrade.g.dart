// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finalgrade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Finalgrade _$FinalgradeFromJson(Map<String, dynamic> json) => Finalgrade(
  id: (json['id'] as num).toInt(),
  calculationVerbal: json['calculation_verbal'] as String?,
  calculationFor: json['calculation_for'] as String,
  subjectId: (json['subject_id'] as num).toInt(),
  intervalId: (json['interval_id'] as num).toInt(),
  teacherId: (json['teacher_id'] as num?)?.toInt(),
  value: json['value'] as String?,
  valueInt: json['value_int'] as num?,
  valueCalc: json['value_calc'],
  valueCalcInt: json['value_calc_int'] as String?,
  calculationRule: json['calculation_rule'] as String?,
  levels: (json['levels'] as List<dynamic>?)
      ?.map((e) => Level.fromJson(e as Map<String, dynamic>))
      .toList(),
  student: json['student'] == null
      ? null
      : Student.fromJson(json['student'] as Map<String, dynamic>),
  teacher: json['teacher'] == null
      ? null
      : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
  subject: json['subject'] == null
      ? null
      : Subject.fromJson(json['subject'] as Map<String, dynamic>),
  interval: json['interval'] == null
      ? null
      : Interval.fromJson(json['interval'] as Map<String, dynamic>),
  histories: (json['histories'] as List<dynamic>?)
      ?.map((e) => History.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FinalgradeToJson(Finalgrade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'value_int': instance.valueInt,
      'value_calc': instance.valueCalc,
      'value_calc_int': instance.valueCalcInt,
      'calculation_rule': instance.calculationRule,
      'calculation_verbal': instance.calculationVerbal,
      'calculation_for': instance.calculationFor,
      'subject_id': instance.subjectId,
      'interval_id': instance.intervalId,
      'teacher_id': instance.teacherId,
      'levels': instance.levels,
      'student': instance.student,
      'teacher': instance.teacher,
      'subject': instance.subject,
      'interval': instance.interval,
      'histories': instance.histories,
    };
