// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_substitution_plans_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubstitutionPlansResponse _$GetSubstitutionPlansResponseFromJson(
  Map<String, dynamic> json,
) => GetSubstitutionPlansResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => SubstitutionPlan.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetSubstitutionPlansResponseToJson(
  GetSubstitutionPlansResponse instance,
) => <String, dynamic>{'data': instance.data};
