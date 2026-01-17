// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'final_certificate.dart';

part 'get_final_certificates_response.g.dart';

@JsonSerializable()
class GetFinalCertificatesResponse {
  const GetFinalCertificatesResponse({
    required this.data,
  });
  
  factory GetFinalCertificatesResponse.fromJson(Map<String, Object?> json) => _$GetFinalCertificatesResponseFromJson(json);
  
  final List<FinalCertificate> data;

  Map<String, Object?> toJson() => _$GetFinalCertificatesResponseToJson(this);
}
