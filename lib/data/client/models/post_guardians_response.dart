// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';
import 'meta50.dart';

part 'post_guardians_response.g.dart';

@JsonSerializable()
class PostGuardiansResponse {
  const PostGuardiansResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostGuardiansResponse.fromJson(Map<String, Object?> json) => _$PostGuardiansResponseFromJson(json);
  
  final Guardian data;
  final Meta50 meta;

  Map<String, Object?> toJson() => _$PostGuardiansResponseToJson(this);
}
