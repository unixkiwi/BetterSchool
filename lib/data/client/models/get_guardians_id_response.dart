// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';
import 'meta51.dart';

part 'get_guardians_id_response.g.dart';

@JsonSerializable()
class GetGuardiansIdResponse {
  const GetGuardiansIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetGuardiansIdResponse.fromJson(Map<String, Object?> json) => _$GetGuardiansIdResponseFromJson(json);
  
  final Guardian data;
  final Meta51 meta;

  Map<String, Object?> toJson() => _$GetGuardiansIdResponseToJson(this);
}
