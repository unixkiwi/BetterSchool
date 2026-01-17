// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'success.dart';

part 'get_users_id2fa_disable_response.g.dart';

@JsonSerializable()
class GetUsersId2faDisableResponse {
  const GetUsersId2faDisableResponse({
    required this.success,
  });
  
  factory GetUsersId2faDisableResponse.fromJson(Map<String, Object?> json) => _$GetUsersId2faDisableResponseFromJson(json);
  
  final Success success;

  Map<String, Object?> toJson() => _$GetUsersId2faDisableResponseToJson(this);
}
