// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_absence_batches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAbsenceBatchesResponse _$GetAbsenceBatchesResponseFromJson(
  Map<String, dynamic> json,
) => GetAbsenceBatchesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => AbsenceBatch.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetAbsenceBatchesResponseToJson(
  GetAbsenceBatchesResponse instance,
) => <String, dynamic>{'data': instance.data};
