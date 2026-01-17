// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users_id_newpassword_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUsersIdNewpasswordResponse _$GetUsersIdNewpasswordResponseFromJson(
  Map<String, dynamic> json,
) => GetUsersIdNewpasswordResponse(
  password: Password.fromJson(json['password'] as String),
);

Map<String, dynamic> _$GetUsersIdNewpasswordResponseToJson(
  GetUsersIdNewpasswordResponse instance,
) => <String, dynamic>{'password': _$PasswordEnumMap[instance.password]!};

const _$PasswordEnumMap = {Password.empty: '', Password.$unknown: r'$unknown'};
