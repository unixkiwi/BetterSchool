// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'year.dart';

part 'final_certificate.g.dart';

@JsonSerializable()
class FinalCertificate {
  const FinalCertificate({
    required this.id,
    required this.certificateType,
    required this.certificateDate,
    required this.custom,
    this.student,
    this.year,
    this.years,
  });
  
  factory FinalCertificate.fromJson(Map<String, Object?> json) => _$FinalCertificateFromJson(json);
  
  final int id;
  @JsonKey(name: 'certificate_type')
  final String? certificateType;
  @JsonKey(name: 'certificate_date')
  final String certificateDate;
  final String? custom;
  final Student? student;
  final Year? year;
  final List<Year>? years;

  Map<String, Object?> toJson() => _$FinalCertificateToJson(this);
}
