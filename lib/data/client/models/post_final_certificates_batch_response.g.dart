// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_final_certificates_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostFinalCertificatesBatchResponse _$PostFinalCertificatesBatchResponseFromJson(
  Map<String, dynamic> json,
) => PostFinalCertificatesBatchResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => FinalCertificate.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostFinalCertificatesBatchResponseToJson(
  PostFinalCertificatesBatchResponse instance,
) => <String, dynamic>{'data': instance.data};
