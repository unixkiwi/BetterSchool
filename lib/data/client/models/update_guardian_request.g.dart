// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_guardian_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateGuardianRequest _$UpdateGuardianRequestFromJson(
  Map<String, dynamic> json,
) => UpdateGuardianRequest(
  name: json['name'] as String?,
  forename: json['forename'] as String?,
  localId: json['local_id'] as String?,
  verified: json['verified'] as bool?,
  emailPrivate: json['email_private'] as String?,
  emailBusiness: json['email_business'] as String?,
  phonePrivate: json['phone_private'] as String?,
  phoneBusiness: json['phone_business'] as String?,
  deleted: json['deleted'] as bool?,
  studentIds: (json['student_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  tagIds: (json['tag_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$UpdateGuardianRequestToJson(
  UpdateGuardianRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'forename': instance.forename,
  'local_id': instance.localId,
  'verified': instance.verified,
  'email_private': instance.emailPrivate,
  'email_business': instance.emailBusiness,
  'phone_private': instance.phonePrivate,
  'phone_business': instance.phoneBusiness,
  'deleted': instance.deleted,
  'student_ids': instance.studentIds,
  'tag_ids': instance.tagIds,
};
