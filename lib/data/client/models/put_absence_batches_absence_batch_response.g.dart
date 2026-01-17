// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_absence_batches_absence_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutAbsenceBatchesAbsenceBatchResponse
_$PutAbsenceBatchesAbsenceBatchResponseFromJson(Map<String, dynamic> json) =>
    PutAbsenceBatchesAbsenceBatchResponse(
      data: AbsenceBatch.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta5.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PutAbsenceBatchesAbsenceBatchResponseToJson(
  PutAbsenceBatchesAbsenceBatchResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
