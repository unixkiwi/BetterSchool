// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'final_certificate.dart';

part 'get_final_certificates_id_response.g.dart';

@JsonSerializable()
class GetFinalCertificatesIdResponse {
  const GetFinalCertificatesIdResponse({
    required this.data,
  });
  
  factory GetFinalCertificatesIdResponse.fromJson(Map<String, Object?> json) => _$GetFinalCertificatesIdResponseFromJson(json);
  
  final FinalCertificate data;

  Map<String, Object?> toJson() => _$GetFinalCertificatesIdResponseToJson(this);
}
