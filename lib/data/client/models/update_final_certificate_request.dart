// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_final_certificate_request.g.dart';

@JsonSerializable()
class UpdateFinalCertificateRequest {
  const UpdateFinalCertificateRequest({
    this.certificateType,
    this.certificateDate,
    this.custom,
    this.yearIds,
  });
  
  factory UpdateFinalCertificateRequest.fromJson(Map<String, Object?> json) => _$UpdateFinalCertificateRequestFromJson(json);
  
  @JsonKey(name: 'certificate_type')
  final String? certificateType;
  @JsonKey(name: 'certificate_date')
  final DateTime? certificateDate;
  final List<String>? custom;
  @JsonKey(name: 'year_ids')
  final List<String>? yearIds;

  Map<String, Object?> toJson() => _$UpdateFinalCertificateRequestToJson(this);
}
