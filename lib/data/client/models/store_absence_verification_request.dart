// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_absence_verification_request.g.dart';

@JsonSerializable()
class StoreAbsenceVerificationRequest {
  const StoreAbsenceVerificationRequest({
    this.localId,
    this.note,
    this.recordedAt,
  });
  
  factory StoreAbsenceVerificationRequest.fromJson(Map<String, Object?> json) => _$StoreAbsenceVerificationRequestFromJson(json);
  
  @JsonKey(name: 'local_id')
  final String? localId;
  final String? note;
  @JsonKey(name: 'recorded_at')
  final DateTime? recordedAt;

  Map<String, Object?> toJson() => _$StoreAbsenceVerificationRequestToJson(this);
}
