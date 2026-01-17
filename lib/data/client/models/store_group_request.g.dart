// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreGroupRequest _$StoreGroupRequestFromJson(Map<String, dynamic> json) =>
    StoreGroupRequest(
      name: json['name'] as String,
      meta: json['meta'] as bool,
      localId: json['local_id'] as String,
      yearId: json['year_id'] as String,
      custom: json['custom'] as String?,
      levelId: (json['level_id'] as num?)?.toInt(),
      tagIds: (json['tag_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$StoreGroupRequestToJson(StoreGroupRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'meta': instance.meta,
      'custom': instance.custom,
      'level_id': instance.levelId,
      'local_id': instance.localId,
      'year_id': instance.yearId,
      'tag_ids': instance.tagIds,
    };
