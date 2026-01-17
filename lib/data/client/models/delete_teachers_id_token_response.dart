// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';
import 'meta135.dart';

part 'delete_teachers_id_token_response.g.dart';

@JsonSerializable()
class DeleteTeachersIdTokenResponse {
  const DeleteTeachersIdTokenResponse({
    required this.data,
    required this.meta,
  });
  
  factory DeleteTeachersIdTokenResponse.fromJson(Map<String, Object?> json) => _$DeleteTeachersIdTokenResponseFromJson(json);
  
  final Teacher data;
  final Meta135 meta;

  Map<String, Object?> toJson() => _$DeleteTeachersIdTokenResponseToJson(this);
}
