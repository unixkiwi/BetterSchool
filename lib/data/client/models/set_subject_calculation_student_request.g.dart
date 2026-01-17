// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_subject_calculation_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetSubjectCalculationStudentRequest
_$SetSubjectCalculationStudentRequestFromJson(Map<String, dynamic> json) =>
    SetSubjectCalculationStudentRequest(
      calculation: SetSubjectCalculationStudentRequestCalculation.fromJson(
        json['calculation'] as String,
      ),
      grade: json['grade'] as String?,
    );

Map<String, dynamic> _$SetSubjectCalculationStudentRequestToJson(
  SetSubjectCalculationStudentRequest instance,
) => <String, dynamic>{
  'calculation':
      _$SetSubjectCalculationStudentRequestCalculationEnumMap[instance
          .calculation]!,
  'grade': instance.grade,
};

const _$SetSubjectCalculationStudentRequestCalculationEnumMap = {
  SetSubjectCalculationStudentRequestCalculation.auto: 'auto',
  SetSubjectCalculationStudentRequestCalculation.manual: 'manual',
  SetSubjectCalculationStudentRequestCalculation.$unknown: r'$unknown',
};
