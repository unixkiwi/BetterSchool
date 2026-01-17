// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';
import 'meta54.dart';

part 'delete_guardians_id_token_response.g.dart';

@JsonSerializable()
class DeleteGuardiansIdTokenResponse {
  const DeleteGuardiansIdTokenResponse({
    required this.data,
    required this.meta,
  });
  
  factory DeleteGuardiansIdTokenResponse.fromJson(Map<String, Object?> json) => _$DeleteGuardiansIdTokenResponseFromJson(json);
  
  final Guardian data;
  final Meta54 meta;

  Map<String, Object?> toJson() => _$DeleteGuardiansIdTokenResponseToJson(this);
}
