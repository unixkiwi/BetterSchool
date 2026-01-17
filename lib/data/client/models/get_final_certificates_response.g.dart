// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_final_certificates_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFinalCertificatesResponse _$GetFinalCertificatesResponseFromJson(
  Map<String, dynamic> json,
) => GetFinalCertificatesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => FinalCertificate.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetFinalCertificatesResponseToJson(
  GetFinalCertificatesResponse instance,
) => <String, dynamic>{'data': instance.data};
