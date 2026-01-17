// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_substitution_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSubstitutionPlanRequest _$UpdateSubstitutionPlanRequestFromJson(
  Map<String, dynamic> json,
) => UpdateSubstitutionPlanRequest(
  name: json['name'] as String,
  validFrom: DateTime.parse(json['valid_from'] as String),
  validTo: DateTime.parse(json['valid_to'] as String),
);

Map<String, dynamic> _$UpdateSubstitutionPlanRequestToJson(
  UpdateSubstitutionPlanRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'valid_from': instance.validFrom.toIso8601String(),
  'valid_to': instance.validTo.toIso8601String(),
};
