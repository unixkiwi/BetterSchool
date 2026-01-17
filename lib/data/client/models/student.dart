// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'certificate_grade.dart';
import 'collection.dart';
import 'final_certificate.dart';
import 'finalgrade.dart';
import 'grade.dart';
import 'group.dart';
import 'guardian.dart';
import 'interval.dart';
import 'subject.dart';
import 'tag.dart';
import 'user.dart';

part 'student.g.dart';

@JsonSerializable()
class Student {
  const Student({
    required this.id,
    required this.forename,
    required this.nickname,
    required this.name,
    required this.gender,
    required this.birthday,
    required this.isAdult,
    required this.phone,
    this.localId,
    this.token,
    this.tokenValidUntil,
    this.tokenGuardian,
    this.tokenGuardianValidUntil,
    this.deleted,
    this.groups,
    this.metaGroups,
    this.subjects,
    this.intervals,
    this.grades,
    this.collections,
    this.finalgrades,
    this.finalCertificates,
    this.certificateGrades,
    this.users,
    this.usersCount,
    this.guardians,
    this.guardiansCount,
    this.tags,
  });
  
  factory Student.fromJson(Map<String, Object?> json) => _$StudentFromJson(json);
  
  final int id;
  @JsonKey(name: 'local_id')
  final String? localId;
  final String? forename;
  final String? nickname;
  final String? name;
  final String? gender;
  final String? birthday;
  @JsonKey(name: 'is_adult')
  final int isAdult;
  final String? phone;
  final String? token;
  @JsonKey(name: 'token_valid_until')
  final String? tokenValidUntil;
  @JsonKey(name: 'token_guardian')
  final String? tokenGuardian;
  @JsonKey(name: 'token_guardian_valid_until')
  final String? tokenGuardianValidUntil;
  final bool? deleted;
  final List<Group>? groups;
  @JsonKey(name: 'meta_groups')
  final List<Group>? metaGroups;
  final List<Subject>? subjects;
  final List<Interval>? intervals;
  final List<Grade>? grades;
  final List<Collection>? collections;
  final List<Finalgrade>? finalgrades;
  @JsonKey(name: 'final_certificates')
  final List<FinalCertificate>? finalCertificates;
  @JsonKey(name: 'certificate_grades')
  final List<CertificateGrade>? certificateGrades;
  final List<User>? users;
  @JsonKey(name: 'users_count')
  final String? usersCount;
  final List<Guardian>? guardians;
  @JsonKey(name: 'guardians_count')
  final int? guardiansCount;
  final List<Tag>? tags;

  Map<String, Object?> toJson() => _$StudentToJson(this);
}
