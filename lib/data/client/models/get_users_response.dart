// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'get_users_response.g.dart';

@JsonSerializable()
class GetUsersResponse {
  const GetUsersResponse({
    required this.data,
  });
  
  factory GetUsersResponse.fromJson(Map<String, Object?> json) => _$GetUsersResponseFromJson(json);
  
  final List<User> data;

  Map<String, Object?> toJson() => _$GetUsersResponseToJson(this);
}
