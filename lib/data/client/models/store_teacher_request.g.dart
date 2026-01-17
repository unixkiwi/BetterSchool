// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_teacher_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreTeacherRequest _$StoreTeacherRequestFromJson(Map<String, dynamic> json) =>
    StoreTeacherRequest(
      name: json['name'] as String,
      localId: json['local_id'] as String,
      forename: json['forename'] as String?,
      role: json['role'] == null
          ? null
          : StoreTeacherRequestRole.fromJson(json['role'] as String?),
      tagIds: (json['tag_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$StoreTeacherRequestToJson(
  StoreTeacherRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'forename': instance.forename,
  'role': _$StoreTeacherRequestRoleEnumMap[instance.role],
  'local_id': instance.localId,
  'tag_ids': instance.tagIds,
};

const _$StoreTeacherRequestRoleEnumMap = {
  StoreTeacherRequestRole.teacher: 'teacher',
  StoreTeacherRequestRole.management: 'management',
  StoreTeacherRequestRole.$unknown: r'$unknown',
};
