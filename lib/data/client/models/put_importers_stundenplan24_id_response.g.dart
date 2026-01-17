// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_importers_stundenplan24_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutImportersStundenplan24IdResponse
_$PutImportersStundenplan24IdResponseFromJson(Map<String, dynamic> json) =>
    PutImportersStundenplan24IdResponse(
      data: ImporterStundenplan24.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: Meta73.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PutImportersStundenplan24IdResponseToJson(
  PutImportersStundenplan24IdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
