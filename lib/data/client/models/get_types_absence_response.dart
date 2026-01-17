// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_type.dart';

part 'get_types_absence_response.g.dart';

@JsonSerializable()
class GetTypesAbsenceResponse {
  const GetTypesAbsenceResponse({
    required this.data,
  });
  
  factory GetTypesAbsenceResponse.fromJson(Map<String, Object?> json) => _$GetTypesAbsenceResponseFromJson(json);
  
  final List<AbsenceType> data;

  Map<String, Object?> toJson() => _$GetTypesAbsenceResponseToJson(this);
}
