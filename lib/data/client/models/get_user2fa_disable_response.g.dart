// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user2fa_disable_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUser2faDisableResponse _$GetUser2faDisableResponseFromJson(
  Map<String, dynamic> json,
) => GetUser2faDisableResponse(
  success: Success.fromJson(json['success'] as String),
);

Map<String, dynamic> _$GetUser2faDisableResponseToJson(
  GetUser2faDisableResponse instance,
) => <String, dynamic>{'success': _$SuccessEnumMap[instance.success]!};

const _$SuccessEnumMap = {
  Success.success: 'success',
  Success.$unknown: r'$unknown',
};
