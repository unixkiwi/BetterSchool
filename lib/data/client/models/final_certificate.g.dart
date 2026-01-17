// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'final_certificate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinalCertificate _$FinalCertificateFromJson(Map<String, dynamic> json) =>
    FinalCertificate(
      id: (json['id'] as num).toInt(),
      certificateType: json['certificate_type'] as String?,
      certificateDate: json['certificate_date'] as String,
      custom: json['custom'] as String?,
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
      year: json['year'] == null
          ? null
          : Year.fromJson(json['year'] as Map<String, dynamic>),
      years: (json['years'] as List<dynamic>?)
          ?.map((e) => Year.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FinalCertificateToJson(FinalCertificate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'certificate_type': instance.certificateType,
      'certificate_date': instance.certificateDate,
      'custom': instance.custom,
      'student': instance.student,
      'year': instance.year,
      'years': instance.years,
    };
