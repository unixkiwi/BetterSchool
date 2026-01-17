// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'verification.g.dart';

@JsonSerializable()
class Verification {
  const Verification({
    this.confirmed,
    this.localId,
    this.note,
    this.recordedAt,
  });
  
  factory Verification.fromJson(Map<String, Object?> json) => _$VerificationFromJson(json);
  
  final bool? confirmed;
  @JsonKey(name: 'local_id')
  final String? localId;
  final String? note;
  @JsonKey(name: 'recorded_at')
  final DateTime? recordedAt;

  Map<String, Object?> toJson() => _$VerificationToJson(this);
}
