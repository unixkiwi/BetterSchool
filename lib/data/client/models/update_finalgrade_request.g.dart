// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_finalgrade_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateFinalgradeRequest _$UpdateFinalgradeRequestFromJson(
  Map<String, dynamic> json,
) => UpdateFinalgradeRequest(
  value: json['value'] as String?,
  calculationRule: json['calculation_rule'] as String?,
  calculationVerbal: json['calculation_verbal'] as String?,
  calculationFor: json['calculation_for'] == null
      ? null
      : UpdateFinalgradeRequestCalculationFor.fromJson(
          json['calculation_for'] as String,
        ),
);

Map<String, dynamic> _$UpdateFinalgradeRequestToJson(
  UpdateFinalgradeRequest instance,
) => <String, dynamic>{
  'value': instance.value,
  'calculation_rule': instance.calculationRule,
  'calculation_verbal': instance.calculationVerbal,
  'calculation_for':
      _$UpdateFinalgradeRequestCalculationForEnumMap[instance.calculationFor],
};

const _$UpdateFinalgradeRequestCalculationForEnumMap = {
  UpdateFinalgradeRequestCalculationFor.student: 'student',
  UpdateFinalgradeRequestCalculationFor.guardian: 'guardian',
  UpdateFinalgradeRequestCalculationFor.teacher: 'teacher',
  UpdateFinalgradeRequestCalculationFor.management: 'management',
  UpdateFinalgradeRequestCalculationFor.$unknown: r'$unknown',
};
