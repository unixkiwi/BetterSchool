// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'interval.dart';
import 'student.dart';
import 'tag.dart';
import 'user.dart';

part 'guardian.g.dart';

@JsonSerializable()
class Guardian {
  const Guardian({
    required this.id,
    required this.forename,
    required this.name,
    required this.emailPrivate,
    required this.emailBusiness,
    required this.phonePrivate,
    required this.phoneBusiness,
    this.localId,
    this.token,
    this.tokenValidUntil,
    this.deleted,
    this.students,
    this.studentsCount,
    this.intervals,
    this.tags,
    this.user,
  });
  
  factory Guardian.fromJson(Map<String, Object?> json) => _$GuardianFromJson(json);
  
  final int id;
  @JsonKey(name: 'local_id')
  final String? localId;
  final String forename;
  final String name;

  /// Email addresses and phone numbers
  @JsonKey(name: 'email_private')
  final String? emailPrivate;
  @JsonKey(name: 'email_business')
  final String? emailBusiness;
  @JsonKey(name: 'phone_private')
  final String? phonePrivate;
  @JsonKey(name: 'phone_business')
  final String? phoneBusiness;
  final String? token;
  @JsonKey(name: 'token_valid_until')
  final String? tokenValidUntil;
  final bool? deleted;
  final List<Student>? students;
  @JsonKey(name: 'students_count')
  final String? studentsCount;
  final List<Interval>? intervals;
  final List<Tag>? tags;
  final User? user;

  Map<String, Object?> toJson() => _$GuardianToJson(this);
}
