// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'import_action.dart';

part 'batch_final_certificate_request.g.dart';

@JsonSerializable()
class BatchFinalCertificateRequest {
  const BatchFinalCertificateRequest({
    required this.importAction,
    this.id,
    this.yearId,
    this.studentId,
    this.certificateType,
    this.certificateDate,
    this.custom,
    this.yearIds,
  });
  
  factory BatchFinalCertificateRequest.fromJson(Map<String, Object?> json) => _$BatchFinalCertificateRequestFromJson(json);
  
  final String? id;
  @JsonKey(name: 'year_id')
  final String? yearId;
  @JsonKey(name: 'student_id')
  final String? studentId;
  @JsonKey(name: 'certificate_type')
  final String? certificateType;
  @JsonKey(name: 'certificate_date')
  final DateTime? certificateDate;
  final List<String>? custom;
  @JsonKey(name: 'year_ids')
  final List<String>? yearIds;
  @JsonKey(name: 'import_action')
  final ImportAction importAction;

  Map<String, Object?> toJson() => _$BatchFinalCertificateRequestToJson(this);
}
