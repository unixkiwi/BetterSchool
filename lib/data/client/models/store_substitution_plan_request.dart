// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_substitution_plan_request.g.dart';

@JsonSerializable()
class StoreSubstitutionPlanRequest {
  const StoreSubstitutionPlanRequest({
    required this.name,
    required this.validFrom,
    required this.validTo,
    this.importerStundenplan24Id,
  });
  
  factory StoreSubstitutionPlanRequest.fromJson(Map<String, Object?> json) => _$StoreSubstitutionPlanRequestFromJson(json);
  
  final String name;
  @JsonKey(name: 'valid_from')
  final DateTime validFrom;
  @JsonKey(name: 'valid_to')
  final DateTime validTo;
  @JsonKey(name: 'importer_stundenplan24_id')
  final int? importerStundenplan24Id;

  Map<String, Object?> toJson() => _$StoreSubstitutionPlanRequestToJson(this);
}
