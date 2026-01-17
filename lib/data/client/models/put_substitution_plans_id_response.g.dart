// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_substitution_plans_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutSubstitutionPlansIdResponse _$PutSubstitutionPlansIdResponseFromJson(
  Map<String, dynamic> json,
) => PutSubstitutionPlansIdResponse(
  data: SubstitutionPlan.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta132.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutSubstitutionPlansIdResponseToJson(
  PutSubstitutionPlansIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
