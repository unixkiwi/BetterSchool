// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchStudentRequest _$BatchStudentRequestFromJson(Map<String, dynamic> json) =>
    BatchStudentRequest(
      importAction: ImportAction.fromJson(json['importAction'] as String),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nickname: json['nickname'] as String?,
      forename: json['forename'] as String?,
      isAdult: json['is_adult'] as bool?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      phone: json['phone'] as String?,
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as String?),
      localId: json['local_id'] as String?,
      deleted: json['deleted'] as bool?,
      custom: (json['custom'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BatchStudentRequestToJson(
  BatchStudentRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'nickname': instance.nickname,
  'forename': instance.forename,
  'is_adult': instance.isAdult,
  'birthday': instance.birthday?.toIso8601String(),
  'phone': instance.phone,
  'gender': _$GenderEnumMap[instance.gender],
  'local_id': instance.localId,
  'deleted': instance.deleted,
  'custom': instance.custom,
  'tags': instance.tags,
  'importAction': _$ImportActionEnumMap[instance.importAction]!,
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.diverse: 'diverse',
  Gender.$unknown: r'$unknown',
};

const _$ImportActionEnumMap = {
  ImportAction.create: 'create',
  ImportAction.update: 'update',
  ImportAction.delete: 'delete',
  ImportAction.$unknown: r'$unknown',
};
