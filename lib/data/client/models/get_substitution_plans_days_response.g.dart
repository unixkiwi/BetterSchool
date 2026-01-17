// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_substitution_plans_days_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubstitutionPlansDaysResponse _$GetSubstitutionPlansDaysResponseFromJson(
  Map<String, dynamic> json,
) => GetSubstitutionPlansDaysResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => SubstitutionPlanDay.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetSubstitutionPlansDaysResponseToJson(
  GetSubstitutionPlansDaysResponse instance,
) => <String, dynamic>{'data': instance.data};
