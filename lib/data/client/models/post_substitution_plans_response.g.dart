// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_substitution_plans_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSubstitutionPlansResponse _$PostSubstitutionPlansResponseFromJson(
  Map<String, dynamic> json,
) => PostSubstitutionPlansResponse(
  data: SubstitutionPlan.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta130.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostSubstitutionPlansResponseToJson(
  PostSubstitutionPlansResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
