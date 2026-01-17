// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_importers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetImportersResponse _$GetImportersResponseFromJson(
  Map<String, dynamic> json,
) => GetImportersResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Importer.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetImportersResponseToJson(
  GetImportersResponse instance,
) => <String, dynamic>{'data': instance.data};
