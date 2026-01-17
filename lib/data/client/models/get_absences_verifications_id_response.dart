// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_verification.dart';
import 'meta11.dart';

part 'get_absences_verifications_id_response.g.dart';

@JsonSerializable()
class GetAbsencesVerificationsIdResponse {
  const GetAbsencesVerificationsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetAbsencesVerificationsIdResponse.fromJson(Map<String, Object?> json) => _$GetAbsencesVerificationsIdResponseFromJson(json);
  
  final AbsenceVerification data;
  final Meta11 meta;

  Map<String, Object?> toJson() => _$GetAbsencesVerificationsIdResponseToJson(this);
}
