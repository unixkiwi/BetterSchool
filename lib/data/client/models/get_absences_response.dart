// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence.dart';

part 'get_absences_response.g.dart';

@JsonSerializable()
class GetAbsencesResponse {
  const GetAbsencesResponse({
    required this.data,
  });
  
  factory GetAbsencesResponse.fromJson(Map<String, Object?> json) => _$GetAbsencesResponseFromJson(json);
  
  final List<Absence> data;

  Map<String, Object?> toJson() => _$GetAbsencesResponseToJson(this);
}
