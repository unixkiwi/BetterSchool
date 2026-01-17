// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_collection_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCollectionRequest _$StoreCollectionRequestFromJson(
  Map<String, dynamic> json,
) => StoreCollectionRequest(
  type: json['type'] as String,
  name: json['name'] as String,
  givenAt: DateTime.parse(json['given_at'] as String),
  intervalId: (json['interval_id'] as num).toInt(),
  subjectId: (json['subject_id'] as num).toInt(),
  groupId: (json['group_id'] as num).toInt(),
  weighting: (json['weighting'] as num?)?.toInt(),
  visibleFrom: json['visible_from'] == null
      ? null
      : DateTime.parse(json['visible_from'] as String),
);

Map<String, dynamic> _$StoreCollectionRequestToJson(
  StoreCollectionRequest instance,
) => <String, dynamic>{
  'type': instance.type,
  'name': instance.name,
  'weighting': instance.weighting,
  'given_at': instance.givenAt.toIso8601String(),
  'visible_from': instance.visibleFrom?.toIso8601String(),
  'interval_id': instance.intervalId,
  'subject_id': instance.subjectId,
  'group_id': instance.groupId,
};
