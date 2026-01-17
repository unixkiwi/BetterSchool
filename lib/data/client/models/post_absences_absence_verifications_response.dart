// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_verification.dart';
import 'meta10.dart';

part 'post_absences_absence_verifications_response.g.dart';

@JsonSerializable()
class PostAbsencesAbsenceVerificationsResponse {
  const PostAbsencesAbsenceVerificationsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostAbsencesAbsenceVerificationsResponse.fromJson(Map<String, Object?> json) => _$PostAbsencesAbsenceVerificationsResponseFromJson(json);
  
  final AbsenceVerification data;
  final Meta10 meta;

  Map<String, Object?> toJson() => _$PostAbsencesAbsenceVerificationsResponseToJson(this);
}
