// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_batch.dart';
import 'meta4.dart';

part 'post_absence_batches_response.g.dart';

@JsonSerializable()
class PostAbsenceBatchesResponse {
  const PostAbsenceBatchesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostAbsenceBatchesResponse.fromJson(Map<String, Object?> json) => _$PostAbsenceBatchesResponseFromJson(json);
  
  final AbsenceBatch data;
  final Meta4 meta;

  Map<String, Object?> toJson() => _$PostAbsenceBatchesResponseToJson(this);
}
