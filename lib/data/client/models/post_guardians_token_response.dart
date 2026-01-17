// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';

part 'post_guardians_token_response.g.dart';

@JsonSerializable()
class PostGuardiansTokenResponse {
  const PostGuardiansTokenResponse({
    required this.data,
  });
  
  factory PostGuardiansTokenResponse.fromJson(Map<String, Object?> json) => _$PostGuardiansTokenResponseFromJson(json);
  
  final List<Guardian> data;

  Map<String, Object?> toJson() => _$PostGuardiansTokenResponseToJson(this);
}
