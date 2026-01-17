// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_substitution_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreSubstitutionPlanRequest _$StoreSubstitutionPlanRequestFromJson(
  Map<String, dynamic> json,
) => StoreSubstitutionPlanRequest(
  name: json['name'] as String,
  validFrom: DateTime.parse(json['valid_from'] as String),
  validTo: DateTime.parse(json['valid_to'] as String),
  importerStundenplan24Id: (json['importer_stundenplan24_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$StoreSubstitutionPlanRequestToJson(
  StoreSubstitutionPlanRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'valid_from': instance.validFrom.toIso8601String(),
  'valid_to': instance.validTo.toIso8601String(),
  'importer_stundenplan24_id': instance.importerStundenplan24Id,
};
