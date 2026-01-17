// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchGroupRequest _$BatchGroupRequestFromJson(Map<String, dynamic> json) =>
    BatchGroupRequest(
      localId: json['local_id'] as String,
      importAction: ImportAction.fromJson(json['importAction'] as String),
      yearId: json['year_id'] as String,
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      custom: json['custom'] as String?,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BatchGroupRequestToJson(BatchGroupRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'local_id': instance.localId,
      'custom': instance.custom,
      'subjects': instance.subjects,
      'students': instance.students,
      'tags': instance.tags,
      'importAction': _$ImportActionEnumMap[instance.importAction]!,
      'year_id': instance.yearId,
    };

const _$ImportActionEnumMap = {
  ImportAction.create: 'create',
  ImportAction.update: 'update',
  ImportAction.delete: 'delete',
  ImportAction.$unknown: r'$unknown',
};
