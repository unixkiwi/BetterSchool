// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_announcement_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAnnouncementTypeRequest _$UpdateAnnouncementTypeRequestFromJson(
  Map<String, dynamic> json,
) => UpdateAnnouncementTypeRequest(
  name: json['name'] as String,
  defaultValue: json['default'] as bool,
  defaultFor: UpdateAnnouncementTypeRequestDefaultFor.fromJson(
    json['default_for'] as String,
  ),
  color: json['color'] as String?,
);

Map<String, dynamic> _$UpdateAnnouncementTypeRequestToJson(
  UpdateAnnouncementTypeRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'color': instance.color,
  'default': instance.defaultValue,
  'default_for':
      _$UpdateAnnouncementTypeRequestDefaultForEnumMap[instance.defaultFor]!,
};

const _$UpdateAnnouncementTypeRequestDefaultForEnumMap = {
  UpdateAnnouncementTypeRequestDefaultFor.student: 'student',
  UpdateAnnouncementTypeRequestDefaultFor.guardian: 'guardian',
  UpdateAnnouncementTypeRequestDefaultFor.teacher: 'teacher',
  UpdateAnnouncementTypeRequestDefaultFor.management: 'management',
  UpdateAnnouncementTypeRequestDefaultFor.self: 'self',
  UpdateAnnouncementTypeRequestDefaultFor.$unknown: r'$unknown',
};
