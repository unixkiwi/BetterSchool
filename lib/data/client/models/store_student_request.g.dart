// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreStudentRequest _$StoreStudentRequestFromJson(Map<String, dynamic> json) =>
    StoreStudentRequest(
      name: json['name'] as String,
      localId: json['local_id'] as String,
      forename: json['forename'] as String?,
      nickname: json['nickname'] as String?,
      gender: json['gender'] == null
          ? null
          : StoreStudentRequestGender.fromJson(json['gender'] as String?),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      isAdult: json['is_adult'] as bool?,
      phone: json['phone'] as String?,
      tagIds: (json['tag_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$StoreStudentRequestToJson(
  StoreStudentRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'forename': instance.forename,
  'nickname': instance.nickname,
  'gender': _$StoreStudentRequestGenderEnumMap[instance.gender],
  'birthday': instance.birthday?.toIso8601String(),
  'is_adult': instance.isAdult,
  'phone': instance.phone,
  'local_id': instance.localId,
  'tag_ids': instance.tagIds,
};

const _$StoreStudentRequestGenderEnumMap = {
  StoreStudentRequestGender.male: 'male',
  StoreStudentRequestGender.female: 'female',
  StoreStudentRequestGender.diverse: 'diverse',
  StoreStudentRequestGender.$unknown: r'$unknown',
};
