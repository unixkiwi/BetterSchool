// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Student _$StudentFromJson(Map<String, dynamic> json) => Student(
  id: (json['id'] as num).toInt(),
  forename: json['forename'] as String?,
  nickname: json['nickname'] as String?,
  name: json['name'] as String?,
  gender: json['gender'] as String?,
  birthday: json['birthday'] as String?,
  isAdult: (json['is_adult'] as num).toInt(),
  phone: json['phone'] as String?,
  localId: json['local_id'] as String?,
  token: json['token'] as String?,
  tokenValidUntil: json['token_valid_until'] as String?,
  tokenGuardian: json['token_guardian'] as String?,
  tokenGuardianValidUntil: json['token_guardian_valid_until'] as String?,
  deleted: json['deleted'] as bool?,
  groups: (json['groups'] as List<dynamic>?)
      ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
      .toList(),
  metaGroups: (json['meta_groups'] as List<dynamic>?)
      ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
      .toList(),
  subjects: (json['subjects'] as List<dynamic>?)
      ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
      .toList(),
  intervals: (json['intervals'] as List<dynamic>?)
      ?.map((e) => Interval.fromJson(e as Map<String, dynamic>))
      .toList(),
  grades: (json['grades'] as List<dynamic>?)
      ?.map((e) => Grade.fromJson(e as Map<String, dynamic>))
      .toList(),
  collections: (json['collections'] as List<dynamic>?)
      ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
      .toList(),
  finalgrades: (json['finalgrades'] as List<dynamic>?)
      ?.map((e) => Finalgrade.fromJson(e as Map<String, dynamic>))
      .toList(),
  finalCertificates: (json['final_certificates'] as List<dynamic>?)
      ?.map((e) => FinalCertificate.fromJson(e as Map<String, dynamic>))
      .toList(),
  certificateGrades: (json['certificate_grades'] as List<dynamic>?)
      ?.map((e) => CertificateGrade.fromJson(e as Map<String, dynamic>))
      .toList(),
  users: (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
  usersCount: json['users_count'] as String?,
  guardians: (json['guardians'] as List<dynamic>?)
      ?.map((e) => Guardian.fromJson(e as Map<String, dynamic>))
      .toList(),
  guardiansCount: (json['guardians_count'] as num?)?.toInt(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
  'id': instance.id,
  'local_id': instance.localId,
  'forename': instance.forename,
  'nickname': instance.nickname,
  'name': instance.name,
  'gender': instance.gender,
  'birthday': instance.birthday,
  'is_adult': instance.isAdult,
  'phone': instance.phone,
  'token': instance.token,
  'token_valid_until': instance.tokenValidUntil,
  'token_guardian': instance.tokenGuardian,
  'token_guardian_valid_until': instance.tokenGuardianValidUntil,
  'deleted': instance.deleted,
  'groups': instance.groups,
  'meta_groups': instance.metaGroups,
  'subjects': instance.subjects,
  'intervals': instance.intervals,
  'grades': instance.grades,
  'collections': instance.collections,
  'finalgrades': instance.finalgrades,
  'final_certificates': instance.finalCertificates,
  'certificate_grades': instance.certificateGrades,
  'users': instance.users,
  'users_count': instance.usersCount,
  'guardians': instance.guardians,
  'guardians_count': instance.guardiansCount,
  'tags': instance.tags,
};
