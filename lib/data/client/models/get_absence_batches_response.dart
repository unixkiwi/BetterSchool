// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_batch.dart';

part 'get_absence_batches_response.g.dart';

@JsonSerializable()
class GetAbsenceBatchesResponse {
  const GetAbsenceBatchesResponse({
    required this.data,
  });
  
  factory GetAbsenceBatchesResponse.fromJson(Map<String, Object?> json) => _$GetAbsenceBatchesResponseFromJson(json);
  
  final List<AbsenceBatch> data;

  Map<String, Object?> toJson() => _$GetAbsenceBatchesResponseToJson(this);
}
