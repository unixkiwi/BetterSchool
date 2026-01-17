// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_certificate_grades_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCertificateGradesResponse _$GetCertificateGradesResponseFromJson(
  Map<String, dynamic> json,
) => GetCertificateGradesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => CertificateGrade.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetCertificateGradesResponseToJson(
  GetCertificateGradesResponse instance,
) => <String, dynamic>{'data': instance.data};
