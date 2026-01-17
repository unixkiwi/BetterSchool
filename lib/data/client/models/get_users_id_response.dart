// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user.dart';
import 'meta151.dart';

part 'get_users_id_response.g.dart';

@JsonSerializable()
class GetUsersIdResponse {
  const GetUsersIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetUsersIdResponse.fromJson(Map<String, Object?> json) => _$GetUsersIdResponseFromJson(json);
  
  final User data;
  final Meta151 meta;

  Map<String, Object?> toJson() => _$GetUsersIdResponseToJson(this);
}
