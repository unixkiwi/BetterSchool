// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'verification2.g.dart';

@JsonSerializable()
class Verification2 {
  const Verification2({
    this.id,
    this.confirmed,
    this.localId,
    this.note,
    this.recordedAt,
  });
  
  factory Verification2.fromJson(Map<String, Object?> json) => _$Verification2FromJson(json);
  
  final num? id;
  final bool? confirmed;
  @JsonKey(name: 'local_id')
  final String? localId;
  final String? note;
  @JsonKey(name: 'recorded_at')
  final DateTime? recordedAt;

  Map<String, Object?> toJson() => _$Verification2ToJson(this);
}
