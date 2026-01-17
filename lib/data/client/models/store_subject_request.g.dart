// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_subject_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreSubjectRequest _$StoreSubjectRequestFromJson(Map<String, dynamic> json) =>
    StoreSubjectRequest(
      name: json['name'] as String,
      localId: json['local_id'] as String,
      forEnum: StoreSubjectRequestForEnum.fromJson(json['for'] as String),
      tagIds: (json['tag_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$StoreSubjectRequestToJson(
  StoreSubjectRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'local_id': instance.localId,
  'for': _$StoreSubjectRequestForEnumEnumMap[instance.forEnum]!,
  'tag_ids': instance.tagIds,
};

const _$StoreSubjectRequestForEnumEnumMap = {
  StoreSubjectRequestForEnum.student: 'student',
  StoreSubjectRequestForEnum.guardian: 'guardian',
  StoreSubjectRequestForEnum.teacher: 'teacher',
  StoreSubjectRequestForEnum.management: 'management',
  StoreSubjectRequestForEnum.$unknown: r'$unknown',
};
