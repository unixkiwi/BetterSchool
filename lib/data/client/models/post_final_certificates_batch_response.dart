// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'final_certificate.dart';

part 'post_final_certificates_batch_response.g.dart';

@JsonSerializable()
class PostFinalCertificatesBatchResponse {
  const PostFinalCertificatesBatchResponse({
    required this.data,
  });
  
  factory PostFinalCertificatesBatchResponse.fromJson(Map<String, Object?> json) => _$PostFinalCertificatesBatchResponseFromJson(json);
  
  final List<FinalCertificate> data;

  Map<String, Object?> toJson() => _$PostFinalCertificatesBatchResponseToJson(this);
}
