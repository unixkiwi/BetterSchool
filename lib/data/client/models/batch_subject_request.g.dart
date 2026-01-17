// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_subject_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchSubjectRequest _$BatchSubjectRequestFromJson(Map<String, dynamic> json) =>
    BatchSubjectRequest(
      name: json['name'] as String,
      localId: json['local_id'] as String,
      importAction: ImportAction2.fromJson(json['importAction'] as String),
      id: (json['id'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BatchSubjectRequestToJson(
  BatchSubjectRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'local_id': instance.localId,
  'tags': instance.tags,
  'importAction': _$ImportAction2EnumMap[instance.importAction]!,
};

const _$ImportAction2EnumMap = {
  ImportAction2.create: 'create',
  ImportAction2.update: 'update',
  ImportAction2.delete: 'delete',
  ImportAction2.auto: 'auto',
  ImportAction2.$unknown: r'$unknown',
};
