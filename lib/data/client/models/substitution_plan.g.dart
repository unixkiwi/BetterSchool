// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substitution_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstitutionPlan _$SubstitutionPlanFromJson(Map<String, dynamic> json) =>
    SubstitutionPlan(
      id: json['id'] as String,
      name: json['name'] as String,
      validFrom: json['valid_from'] as String?,
      validTo: json['valid_to'] as String?,
      stundenplan24: json['stundenplan24'] as String?,
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => SubstitutionPlanDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubstitutionPlanToJson(SubstitutionPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'valid_from': instance.validFrom,
      'valid_to': instance.validTo,
      'stundenplan24': instance.stundenplan24,
      'days': instance.days,
    };
