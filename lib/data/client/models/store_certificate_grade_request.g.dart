// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_certificate_grade_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCertificateGradeRequest _$StoreCertificateGradeRequestFromJson(
  Map<String, dynamic> json,
) => StoreCertificateGradeRequest(
  value: json['value'] as String,
  type: json['type'] as String,
  studentId: (json['student_id'] as num).toInt(),
  subjectId: json['subject_id'] as String,
  yearId: json['year_id'] as String,
  name: json['name'] as String?,
  givenAt: json['given_at'] == null
      ? null
      : DateTime.parse(json['given_at'] as String),
);

Map<String, dynamic> _$StoreCertificateGradeRequestToJson(
  StoreCertificateGradeRequest instance,
) => <String, dynamic>{
  'value': instance.value,
  'type': instance.type,
  'name': instance.name,
  'given_at': instance.givenAt?.toIso8601String(),
  'student_id': instance.studentId,
  'subject_id': instance.subjectId,
  'year_id': instance.yearId,
};
