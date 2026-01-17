// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_user_firebase_device_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteUserFirebaseDeviceIdResponse _$DeleteUserFirebaseDeviceIdResponseFromJson(
  Map<String, dynamic> json,
) => DeleteUserFirebaseDeviceIdResponse(
  success: Success.fromJson(json['success'] as String),
);

Map<String, dynamic> _$DeleteUserFirebaseDeviceIdResponseToJson(
  DeleteUserFirebaseDeviceIdResponse instance,
) => <String, dynamic>{'success': _$SuccessEnumMap[instance.success]!};

const _$SuccessEnumMap = {
  Success.success: 'success',
  Success.$unknown: r'$unknown',
};
