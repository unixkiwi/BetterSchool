// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_users_id_resend_mail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostUsersIdResendMailResponse _$PostUsersIdResendMailResponseFromJson(
  Map<String, dynamic> json,
) => PostUsersIdResendMailResponse(
  success: Success.fromJson(json['success'] as String),
);

Map<String, dynamic> _$PostUsersIdResendMailResponseToJson(
  PostUsersIdResendMailResponse instance,
) => <String, dynamic>{'success': _$SuccessEnumMap[instance.success]!};

const _$SuccessEnumMap = {
  Success.success: 'success',
  Success.$unknown: r'$unknown',
};
