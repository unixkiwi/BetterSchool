// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_absence_batches_absence_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAbsenceBatchesAbsenceBatchResponse
_$GetAbsenceBatchesAbsenceBatchResponseFromJson(Map<String, dynamic> json) =>
    GetAbsenceBatchesAbsenceBatchResponse(
      data: AbsenceBatch.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta6.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAbsenceBatchesAbsenceBatchResponseToJson(
  GetAbsenceBatchesAbsenceBatchResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
