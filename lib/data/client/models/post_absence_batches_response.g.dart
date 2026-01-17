// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_absence_batches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostAbsenceBatchesResponse _$PostAbsenceBatchesResponseFromJson(
  Map<String, dynamic> json,
) => PostAbsenceBatchesResponse(
  data: AbsenceBatch.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta4.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostAbsenceBatchesResponseToJson(
  PostAbsenceBatchesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
