// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_finalgrade_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreFinalgradeRequest _$StoreFinalgradeRequestFromJson(
  Map<String, dynamic> json,
) => StoreFinalgradeRequest(
  studentId: (json['student_id'] as num).toInt(),
  subjectId: (json['subject_id'] as num).toInt(),
  intervalId: (json['interval_id'] as num).toInt(),
  calculationFor: StoreFinalgradeRequestCalculationFor.fromJson(
    json['calculation_for'] as String,
  ),
  value: json['value'] as String?,
  calculationRule: json['calculation_rule'] as String?,
  calculationVerbal: json['calculation_verbal'] as String?,
);

Map<String, dynamic> _$StoreFinalgradeRequestToJson(
  StoreFinalgradeRequest instance,
) => <String, dynamic>{
  'value': instance.value,
  'student_id': instance.studentId,
  'subject_id': instance.subjectId,
  'interval_id': instance.intervalId,
  'calculation_rule': instance.calculationRule,
  'calculation_verbal': instance.calculationVerbal,
  'calculation_for':
      _$StoreFinalgradeRequestCalculationForEnumMap[instance.calculationFor]!,
};

const _$StoreFinalgradeRequestCalculationForEnumMap = {
  StoreFinalgradeRequestCalculationFor.student: 'student',
  StoreFinalgradeRequestCalculationFor.guardian: 'guardian',
  StoreFinalgradeRequestCalculationFor.teacher: 'teacher',
  StoreFinalgradeRequestCalculationFor.management: 'management',
  StoreFinalgradeRequestCalculationFor.$unknown: r'$unknown',
};
