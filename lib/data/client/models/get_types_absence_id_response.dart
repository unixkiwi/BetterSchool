// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_type.dart';
import 'meta8.dart';

part 'get_types_absence_id_response.g.dart';

@JsonSerializable()
class GetTypesAbsenceIdResponse {
  const GetTypesAbsenceIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTypesAbsenceIdResponse.fromJson(Map<String, Object?> json) => _$GetTypesAbsenceIdResponseFromJson(json);
  
  final AbsenceType data;
  final Meta8 meta;

  Map<String, Object?> toJson() => _$GetTypesAbsenceIdResponseToJson(this);
}
