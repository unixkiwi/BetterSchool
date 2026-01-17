// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tag_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTagRequest _$UpdateTagRequestFromJson(Map<String, dynamic> json) =>
    UpdateTagRequest(
      localId: json['local_id'] as String,
      name: json['name'] as String,
      forEnum: UpdateTagRequestForEnum.fromJson(json['for'] as String),
      hideValue: json['hide'] as bool?,
    );

Map<String, dynamic> _$UpdateTagRequestToJson(UpdateTagRequest instance) =>
    <String, dynamic>{
      'local_id': instance.localId,
      'name': instance.name,
      'hide': instance.hideValue,
      'for': _$UpdateTagRequestForEnumEnumMap[instance.forEnum]!,
    };

const _$UpdateTagRequestForEnumEnumMap = {
  UpdateTagRequestForEnum.student: 'student',
  UpdateTagRequestForEnum.guardian: 'guardian',
  UpdateTagRequestForEnum.teacher: 'teacher',
  UpdateTagRequestForEnum.management: 'management',
  UpdateTagRequestForEnum.$unknown: r'$unknown',
};
