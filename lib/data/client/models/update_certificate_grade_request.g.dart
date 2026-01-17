// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_certificate_grade_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCertificateGradeRequest _$UpdateCertificateGradeRequestFromJson(
  Map<String, dynamic> json,
) => UpdateCertificateGradeRequest(
  value: json['value'] as String?,
  name: json['name'] as String?,
  givenAt: json['given_at'] == null
      ? null
      : DateTime.parse(json['given_at'] as String),
  type: json['type'] as String?,
);

Map<String, dynamic> _$UpdateCertificateGradeRequestToJson(
  UpdateCertificateGradeRequest instance,
) => <String, dynamic>{
  'value': instance.value,
  'name': instance.name,
  'given_at': instance.givenAt?.toIso8601String(),
  'type': instance.type,
};
