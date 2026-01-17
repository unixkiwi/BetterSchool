// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'final_certificate.dart';

part 'post_final_certificates_response.g.dart';

@JsonSerializable()
class PostFinalCertificatesResponse {
  const PostFinalCertificatesResponse({
    required this.data,
  });
  
  factory PostFinalCertificatesResponse.fromJson(Map<String, Object?> json) => _$PostFinalCertificatesResponseFromJson(json);
  
  final FinalCertificate data;

  Map<String, Object?> toJson() => _$PostFinalCertificatesResponseToJson(this);
}
