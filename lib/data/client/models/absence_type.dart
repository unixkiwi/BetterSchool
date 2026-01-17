// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence.dart';

part 'absence_type.g.dart';

@JsonSerializable()
class AbsenceType {
  const AbsenceType({
    required this.id,
    required this.name,
    required this.defaultValue,
    required this.editableAs,
    required this.defaultPresent,
    this.absences,
  });
  
  factory AbsenceType.fromJson(Map<String, Object?> json) => _$AbsenceTypeFromJson(json);
  
  final int id;
  final String name;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final int defaultValue;
  @JsonKey(name: 'editable_as')
  final String editableAs;
  @JsonKey(name: 'default_present')
  final int? defaultPresent;
  final List<Absence>? absences;

  Map<String, Object?> toJson() => _$AbsenceTypeToJson(this);
}
