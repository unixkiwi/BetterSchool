// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_importers_stundenplan24_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetImportersStundenplan24Response _$GetImportersStundenplan24ResponseFromJson(
  Map<String, dynamic> json,
) => GetImportersStundenplan24Response(
  data: (json['data'] as List<dynamic>)
      .map((e) => ImporterStundenplan24.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetImportersStundenplan24ResponseToJson(
  GetImportersStundenplan24Response instance,
) => <String, dynamic>{'data': instance.data};
