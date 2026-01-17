// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';

part 'post_guardians_batch_response.g.dart';

@JsonSerializable()
class PostGuardiansBatchResponse {
  const PostGuardiansBatchResponse({
    required this.data,
  });
  
  factory PostGuardiansBatchResponse.fromJson(Map<String, Object?> json) => _$PostGuardiansBatchResponseFromJson(json);
  
  final List<Guardian> data;

  Map<String, Object?> toJson() => _$PostGuardiansBatchResponseToJson(this);
}
