// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_batch.dart';
import 'meta5.dart';

part 'put_absence_batches_absence_batch_response.g.dart';

@JsonSerializable()
class PutAbsenceBatchesAbsenceBatchResponse {
  const PutAbsenceBatchesAbsenceBatchResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutAbsenceBatchesAbsenceBatchResponse.fromJson(Map<String, Object?> json) => _$PutAbsenceBatchesAbsenceBatchResponseFromJson(json);
  
  final AbsenceBatch data;
  final Meta5 meta;

  Map<String, Object?> toJson() => _$PutAbsenceBatchesAbsenceBatchResponseToJson(this);
}
