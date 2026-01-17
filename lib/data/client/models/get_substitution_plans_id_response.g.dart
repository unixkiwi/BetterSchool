// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_substitution_plans_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubstitutionPlansIdResponse _$GetSubstitutionPlansIdResponseFromJson(
  Map<String, dynamic> json,
) => GetSubstitutionPlansIdResponse(
  data: SubstitutionPlan.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta131.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetSubstitutionPlansIdResponseToJson(
  GetSubstitutionPlansIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
