// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Guardian _$GuardianFromJson(Map<String, dynamic> json) => Guardian(
  id: (json['id'] as num).toInt(),
  forename: json['forename'] as String,
  name: json['name'] as String,
  emailPrivate: json['email_private'] as String?,
  emailBusiness: json['email_business'] as String?,
  phonePrivate: json['phone_private'] as String?,
  phoneBusiness: json['phone_business'] as String?,
  localId: json['local_id'] as String?,
  token: json['token'] as String?,
  tokenValidUntil: json['token_valid_until'] as String?,
  deleted: json['deleted'] as bool?,
  students: (json['students'] as List<dynamic>?)
      ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
      .toList(),
  studentsCount: json['students_count'] as String?,
  intervals: (json['intervals'] as List<dynamic>?)
      ?.map((e) => Interval.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
  user: json['user'] as String?,
);

Map<String, dynamic> _$GuardianToJson(Guardian instance) => <String, dynamic>{
  'id': instance.id,
  'local_id': instance.localId,
  'forename': instance.forename,
  'name': instance.name,
  'email_private': instance.emailPrivate,
  'email_business': instance.emailBusiness,
  'phone_private': instance.phonePrivate,
  'phone_business': instance.phoneBusiness,
  'token': instance.token,
  'token_valid_until': instance.tokenValidUntil,
  'deleted': instance.deleted,
  'students': instance.students,
  'students_count': instance.studentsCount,
  'intervals': instance.intervals,
  'tags': instance.tags,
  'user': instance.user,
};
