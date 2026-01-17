// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_teacher_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchTeacherRequest _$BatchTeacherRequestFromJson(Map<String, dynamic> json) =>
    BatchTeacherRequest(
      localId: json['local_id'] as String,
      importAction: ImportAction.fromJson(json['importAction'] as String),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      forename: json['forename'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BatchTeacherRequestToJson(
  BatchTeacherRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'forename': instance.forename,
  'local_id': instance.localId,
  'tags': instance.tags,
  'importAction': _$ImportActionEnumMap[instance.importAction]!,
};

const _$ImportActionEnumMap = {
  ImportAction.create: 'create',
  ImportAction.update: 'update',
  ImportAction.delete: 'delete',
  ImportAction.$unknown: r'$unknown',
};
