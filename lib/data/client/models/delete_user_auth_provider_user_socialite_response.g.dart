// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_user_auth_provider_user_socialite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteUserAuthProviderUserSocialiteResponse
_$DeleteUserAuthProviderUserSocialiteResponseFromJson(
  Map<String, dynamic> json,
) => DeleteUserAuthProviderUserSocialiteResponse(
  success: Success.fromJson(json['success'] as String),
);

Map<String, dynamic> _$DeleteUserAuthProviderUserSocialiteResponseToJson(
  DeleteUserAuthProviderUserSocialiteResponse instance,
) => <String, dynamic>{'success': _$SuccessEnumMap[instance.success]!};

const _$SuccessEnumMap = {
  Success.success: 'success',
  Success.$unknown: r'$unknown',
};
