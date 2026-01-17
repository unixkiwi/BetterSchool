// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';
import 'meta56.dart';

part 'delete_guardians_guardian_user_response.g.dart';

@JsonSerializable()
class DeleteGuardiansGuardianUserResponse {
  const DeleteGuardiansGuardianUserResponse({
    required this.data,
    required this.meta,
  });
  
  factory DeleteGuardiansGuardianUserResponse.fromJson(Map<String, Object?> json) => _$DeleteGuardiansGuardianUserResponseFromJson(json);
  
  final Guardian data;
  final Meta56 meta;

  Map<String, Object?> toJson() => _$DeleteGuardiansGuardianUserResponseToJson(this);
}
