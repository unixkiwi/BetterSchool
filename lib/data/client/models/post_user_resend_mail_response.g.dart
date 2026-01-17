// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_user_resend_mail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostUserResendMailResponse _$PostUserResendMailResponseFromJson(
  Map<String, dynamic> json,
) => PostUserResendMailResponse(
  success: Success.fromJson(json['success'] as String),
);

Map<String, dynamic> _$PostUserResendMailResponseToJson(
  PostUserResendMailResponse instance,
) => <String, dynamic>{'success': _$SuccessEnumMap[instance.success]!};

const _$SuccessEnumMap = {
  Success.success: 'success',
  Success.$unknown: r'$unknown',
};
