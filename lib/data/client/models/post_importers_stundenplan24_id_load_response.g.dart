// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_importers_stundenplan24_id_load_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostImportersStundenplan24IdLoadResponse
_$PostImportersStundenplan24IdLoadResponseFromJson(Map<String, dynamic> json) =>
    PostImportersStundenplan24IdLoadResponse(
      data: ImporterStundenplan24.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: Meta67.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostImportersStundenplan24IdLoadResponseToJson(
  PostImportersStundenplan24IdLoadResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
