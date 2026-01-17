// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';
import 'meta52.dart';

part 'put_guardians_id_response.g.dart';

@JsonSerializable()
class PutGuardiansIdResponse {
  const PutGuardiansIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutGuardiansIdResponse.fromJson(Map<String, Object?> json) => _$PutGuardiansIdResponseFromJson(json);
  
  final Guardian data;
  final Meta52 meta;

  Map<String, Object?> toJson() => _$PutGuardiansIdResponseToJson(this);
}
