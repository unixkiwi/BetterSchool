// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user.dart';
import 'meta154.dart';

part 'get_user_response.g.dart';

@JsonSerializable()
class GetUserResponse {
  const GetUserResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetUserResponse.fromJson(Map<String, Object?> json) => _$GetUserResponseFromJson(json);
  
  final User data;
  final Meta154 meta;

  Map<String, Object?> toJson() => _$GetUserResponseToJson(this);
}
