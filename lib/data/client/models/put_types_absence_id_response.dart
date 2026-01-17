// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_type.dart';
import 'meta9.dart';

part 'put_types_absence_id_response.g.dart';

@JsonSerializable()
class PutTypesAbsenceIdResponse {
  const PutTypesAbsenceIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutTypesAbsenceIdResponse.fromJson(Map<String, Object?> json) => _$PutTypesAbsenceIdResponseFromJson(json);
  
  final AbsenceType data;
  final Meta9 meta;

  Map<String, Object?> toJson() => _$PutTypesAbsenceIdResponseToJson(this);
}
