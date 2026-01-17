// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'password.dart';

part 'get_users_id_newpassword_response.g.dart';

@JsonSerializable()
class GetUsersIdNewpasswordResponse {
  const GetUsersIdNewpasswordResponse({
    required this.password,
  });
  
  factory GetUsersIdNewpasswordResponse.fromJson(Map<String, Object?> json) => _$GetUsersIdNewpasswordResponseFromJson(json);
  
  final Password password;

  Map<String, Object?> toJson() => _$GetUsersIdNewpasswordResponseToJson(this);
}
