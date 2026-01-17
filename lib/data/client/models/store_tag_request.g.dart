// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_tag_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreTagRequest _$StoreTagRequestFromJson(Map<String, dynamic> json) =>
    StoreTagRequest(
      localId: json['local_id'] as String,
      name: json['name'] as String,
      forEnum: StoreTagRequestForEnum.fromJson(json['for'] as String),
      taggable: json['taggable'] as String,
      hideValue: json['hide'] as bool?,
    );

Map<String, dynamic> _$StoreTagRequestToJson(StoreTagRequest instance) =>
    <String, dynamic>{
      'local_id': instance.localId,
      'name': instance.name,
      'hide': instance.hideValue,
      'for': _$StoreTagRequestForEnumEnumMap[instance.forEnum]!,
      'taggable': instance.taggable,
    };

const _$StoreTagRequestForEnumEnumMap = {
  StoreTagRequestForEnum.student: 'student',
  StoreTagRequestForEnum.guardian: 'guardian',
  StoreTagRequestForEnum.teacher: 'teacher',
  StoreTagRequestForEnum.management: 'management',
  StoreTagRequestForEnum.$unknown: r'$unknown',
};
