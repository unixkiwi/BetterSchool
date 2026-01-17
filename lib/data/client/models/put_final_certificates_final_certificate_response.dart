// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'final_certificate.dart';

part 'put_final_certificates_final_certificate_response.g.dart';

@JsonSerializable()
class PutFinalCertificatesFinalCertificateResponse {
  const PutFinalCertificatesFinalCertificateResponse({
    required this.data,
  });
  
  factory PutFinalCertificatesFinalCertificateResponse.fromJson(Map<String, Object?> json) => _$PutFinalCertificatesFinalCertificateResponseFromJson(json);
  
  final FinalCertificate data;

  Map<String, Object?> toJson() => _$PutFinalCertificatesFinalCertificateResponseToJson(this);
}
