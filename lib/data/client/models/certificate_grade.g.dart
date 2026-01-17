// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CertificateGrade _$CertificateGradeFromJson(Map<String, dynamic> json) =>
    CertificateGrade(
      id: (json['id'] as num).toInt(),
      value: json['value'] as String,
      type: json['type'] as String,
      name: json['name'] as String?,
      givenAt: json['given_at'] as String,
      subject: json['subject'] == null
          ? null
          : Subject.fromJson(json['subject'] as Map<String, dynamic>),
      teacher: json['teacher'] == null
          ? null
          : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      year: json['year'] == null
          ? null
          : Year.fromJson(json['year'] as Map<String, dynamic>),
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CertificateGradeToJson(CertificateGrade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'type': instance.type,
      'name': instance.name,
      'given_at': instance.givenAt,
      'subject': instance.subject,
      'teacher': instance.teacher,
      'year': instance.year,
      'student': instance.student,
    };
