// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_guardian_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchGuardianRequest _$BatchGuardianRequestFromJson(
  Map<String, dynamic> json,
) => BatchGuardianRequest(
  localId: json['local_id'] as String,
  importAction: ImportAction.fromJson(json['importAction'] as String),
  id: json['id'] as String?,
  name: json['name'] as String?,
  forename: json['forename'] as String?,
  emailPrivate: json['email_private'] as String?,
  emailBusiness: json['email_business'] as String?,
  phonePrivate: json['phone_private'] as String?,
  phoneBusiness: json['phone_business'] as String?,
  students: (json['students'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$BatchGuardianRequestToJson(
  BatchGuardianRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'forename': instance.forename,
  'email_private': instance.emailPrivate,
  'email_business': instance.emailBusiness,
  'phone_private': instance.phonePrivate,
  'phone_business': instance.phoneBusiness,
  'local_id': instance.localId,
  'importAction': _$ImportActionEnumMap[instance.importAction]!,
  'students': instance.students,
};

const _$ImportActionEnumMap = {
  ImportAction.create: 'create',
  ImportAction.update: 'update',
  ImportAction.delete: 'delete',
  ImportAction.$unknown: r'$unknown',
};
