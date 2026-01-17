// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_importer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushImporterRequest _$PushImporterRequestFromJson(Map<String, dynamic> json) =>
    PushImporterRequest(
      data: (json['data'] as List<dynamic>).map((e) => e as String).toList(),
      meta: json['meta'] == null
          ? null
          : Meta164.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PushImporterRequestToJson(
  PushImporterRequest instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
