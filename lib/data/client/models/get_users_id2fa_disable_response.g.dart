// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users_id2fa_disable_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUsersId2faDisableResponse _$GetUsersId2faDisableResponseFromJson(
  Map<String, dynamic> json,
) => GetUsersId2faDisableResponse(
  success: Success.fromJson(json['success'] as String),
);

Map<String, dynamic> _$GetUsersId2faDisableResponseToJson(
  GetUsersId2faDisableResponse instance,
) => <String, dynamic>{'success': _$SuccessEnumMap[instance.success]!};

const _$SuccessEnumMap = {
  Success.success: 'success',
  Success.$unknown: r'$unknown',
};
