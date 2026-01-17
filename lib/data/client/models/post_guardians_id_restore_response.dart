// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';
import 'meta55.dart';

part 'post_guardians_id_restore_response.g.dart';

@JsonSerializable()
class PostGuardiansIdRestoreResponse {
  const PostGuardiansIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostGuardiansIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostGuardiansIdRestoreResponseFromJson(json);
  
  final Guardian data;
  final Meta55 meta;

  Map<String, Object?> toJson() => _$PostGuardiansIdRestoreResponseToJson(this);
}
