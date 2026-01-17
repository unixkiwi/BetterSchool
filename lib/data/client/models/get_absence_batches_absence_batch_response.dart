// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_batch.dart';
import 'meta6.dart';

part 'get_absence_batches_absence_batch_response.g.dart';

@JsonSerializable()
class GetAbsenceBatchesAbsenceBatchResponse {
  const GetAbsenceBatchesAbsenceBatchResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetAbsenceBatchesAbsenceBatchResponse.fromJson(Map<String, Object?> json) => _$GetAbsenceBatchesAbsenceBatchResponseFromJson(json);
  
  final AbsenceBatch data;
  final Meta6 meta;

  Map<String, Object?> toJson() => _$GetAbsenceBatchesAbsenceBatchResponseToJson(this);
}
