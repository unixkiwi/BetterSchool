// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_substitution_plans_days_date_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubstitutionPlansDaysDateResponse
_$GetSubstitutionPlansDaysDateResponseFromJson(Map<String, dynamic> json) =>
    GetSubstitutionPlansDaysDateResponse(
      data: SubstitutionPlanDay.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta133.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetSubstitutionPlansDaysDateResponseToJson(
  GetSubstitutionPlansDaysDateResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
