// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'import_action.dart';

part 'batch_guardian_request.g.dart';

@JsonSerializable()
class BatchGuardianRequest {
  const BatchGuardianRequest({
    required this.localId,
    required this.importAction,
    this.id,
    this.name,
    this.forename,
    this.emailPrivate,
    this.emailBusiness,
    this.phonePrivate,
    this.phoneBusiness,
    this.students,
  });
  
  factory BatchGuardianRequest.fromJson(Map<String, Object?> json) => _$BatchGuardianRequestFromJson(json);
  
  final String? id;
  final String? name;
  final String? forename;
  @JsonKey(name: 'email_private')
  final String? emailPrivate;
  @JsonKey(name: 'email_business')
  final String? emailBusiness;
  @JsonKey(name: 'phone_private')
  final String? phonePrivate;
  @JsonKey(name: 'phone_business')
  final String? phoneBusiness;
  @JsonKey(name: 'local_id')
  final String localId;
  final ImportAction importAction;
  final List<String>? students;

  Map<String, Object?> toJson() => _$BatchGuardianRequestToJson(this);
}
