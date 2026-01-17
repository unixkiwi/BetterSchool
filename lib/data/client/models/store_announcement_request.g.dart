// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_announcement_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreAnnouncementRequest _$StoreAnnouncementRequestFromJson(
  Map<String, dynamic> json,
) => StoreAnnouncementRequest(
  title: json['title'] as String,
  from: DateTime.parse(json['from'] as String),
  to: DateTime.parse(json['to'] as String),
  forValue: json['for'] as String,
  groupIds: (json['group_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  message: json['message'] as String?,
  needConfirmationFromStudent: json['need_confirmation_from_student'] as bool?,
  needConfirmationFromGuardian:
      json['need_confirmation_from_guardian'] as bool?,
  typeId: (json['type_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$StoreAnnouncementRequestToJson(
  StoreAnnouncementRequest instance,
) => <String, dynamic>{
  'title': instance.title,
  'message': instance.message,
  'from': instance.from.toIso8601String(),
  'to': instance.to.toIso8601String(),
  'for': instance.forValue,
  'need_confirmation_from_student': instance.needConfirmationFromStudent,
  'need_confirmation_from_guardian': instance.needConfirmationFromGuardian,
  'type_id': instance.typeId,
  'group_ids': instance.groupIds,
};
