// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_absence_type_request_editable_as.dart';

part 'store_absence_type_request.g.dart';

@JsonSerializable()
class StoreAbsenceTypeRequest {
  const StoreAbsenceTypeRequest({
    required this.name,
    required this.defaultValue,
    this.editableAs,
    this.defaultPresent,
  });
  
  factory StoreAbsenceTypeRequest.fromJson(Map<String, Object?> json) => _$StoreAbsenceTypeRequestFromJson(json);
  
  final String name;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final bool defaultValue;
  @JsonKey(name: 'editable_as')
  final StoreAbsenceTypeRequestEditableAs? editableAs;
  @JsonKey(name: 'default_present')
  final bool? defaultPresent;

  Map<String, Object?> toJson() => _$StoreAbsenceTypeRequestToJson(this);
}
