// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user.dart';
import 'meta152.dart';

part 'put_users_id_response.g.dart';

@JsonSerializable()
class PutUsersIdResponse {
  const PutUsersIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutUsersIdResponse.fromJson(Map<String, Object?> json) => _$PutUsersIdResponseFromJson(json);
  
  final User data;
  final Meta152 meta;

  Map<String, Object?> toJson() => _$PutUsersIdResponseToJson(this);
}
