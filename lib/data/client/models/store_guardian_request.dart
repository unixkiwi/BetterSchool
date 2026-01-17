// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_guardian_request.g.dart';

@JsonSerializable()
class StoreGuardianRequest {
  const StoreGuardianRequest({
    required this.name,
    required this.forename,
    this.localId,
    this.verified,
    this.emailPrivate,
    this.emailBusiness,
    this.phonePrivate,
    this.phoneBusiness,
    this.studentIds,
    this.tagIds,
  });
  
  factory StoreGuardianRequest.fromJson(Map<String, Object?> json) => _$StoreGuardianRequestFromJson(json);
  
  final String name;
  final String forename;
  @JsonKey(name: 'local_id')
  final String? localId;
  final bool? verified;
  @JsonKey(name: 'email_private')
  final String? emailPrivate;
  @JsonKey(name: 'email_business')
  final String? emailBusiness;
  @JsonKey(name: 'phone_private')
  final String? phonePrivate;
  @JsonKey(name: 'phone_business')
  final String? phoneBusiness;
  @JsonKey(name: 'student_ids')
  final List<int>? studentIds;
  @JsonKey(name: 'tag_ids')
  final List<int>? tagIds;

  Map<String, Object?> toJson() => _$StoreGuardianRequestToJson(this);
}
