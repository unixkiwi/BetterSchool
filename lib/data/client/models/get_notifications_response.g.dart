// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotificationsResponse _$GetNotificationsResponseFromJson(
  Map<String, dynamic> json,
) => GetNotificationsResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Notification.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetNotificationsResponseToJson(
  GetNotificationsResponse instance,
) => <String, dynamic>{'data': instance.data};
