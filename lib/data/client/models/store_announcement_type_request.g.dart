// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_announcement_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreAnnouncementTypeRequest _$StoreAnnouncementTypeRequestFromJson(
  Map<String, dynamic> json,
) => StoreAnnouncementTypeRequest(
  name: json['name'] as String,
  defaultValue: json['default'] as bool,
  defaultFor: StoreAnnouncementTypeRequestDefaultFor.fromJson(
    json['default_for'] as String,
  ),
  color: json['color'] as String?,
);

Map<String, dynamic> _$StoreAnnouncementTypeRequestToJson(
  StoreAnnouncementTypeRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'color': instance.color,
  'default': instance.defaultValue,
  'default_for':
      _$StoreAnnouncementTypeRequestDefaultForEnumMap[instance.defaultFor]!,
};

const _$StoreAnnouncementTypeRequestDefaultForEnumMap = {
  StoreAnnouncementTypeRequestDefaultFor.student: 'student',
  StoreAnnouncementTypeRequestDefaultFor.guardian: 'guardian',
  StoreAnnouncementTypeRequestDefaultFor.teacher: 'teacher',
  StoreAnnouncementTypeRequestDefaultFor.management: 'management',
  StoreAnnouncementTypeRequestDefaultFor.self: 'self',
  StoreAnnouncementTypeRequestDefaultFor.$unknown: r'$unknown',
};
