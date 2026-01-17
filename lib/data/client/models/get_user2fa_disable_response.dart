// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'success.dart';

part 'get_user2fa_disable_response.g.dart';

@JsonSerializable()
class GetUser2faDisableResponse {
  const GetUser2faDisableResponse({
    required this.success,
  });
  
  factory GetUser2faDisableResponse.fromJson(Map<String, Object?> json) => _$GetUser2faDisableResponseFromJson(json);
  
  final Success success;

  Map<String, Object?> toJson() => _$GetUser2faDisableResponseToJson(this);
}
