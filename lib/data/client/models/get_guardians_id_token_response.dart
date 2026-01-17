// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';
import 'meta53.dart';

part 'get_guardians_id_token_response.g.dart';

@JsonSerializable()
class GetGuardiansIdTokenResponse {
  const GetGuardiansIdTokenResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetGuardiansIdTokenResponse.fromJson(Map<String, Object?> json) => _$GetGuardiansIdTokenResponseFromJson(json);
  
  final Guardian data;
  final Meta53 meta;

  Map<String, Object?> toJson() => _$GetGuardiansIdTokenResponseToJson(this);
}
