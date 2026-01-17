// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_importers_stundenplan24_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetImportersStundenplan24IdResponse
_$GetImportersStundenplan24IdResponseFromJson(Map<String, dynamic> json) =>
    GetImportersStundenplan24IdResponse(
      data: ImporterStundenplan24.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: Meta72.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetImportersStundenplan24IdResponseToJson(
  GetImportersStundenplan24IdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
