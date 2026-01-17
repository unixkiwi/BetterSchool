// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'notification.dart';

part 'get_notifications_response.g.dart';

@JsonSerializable()
class GetNotificationsResponse {
  const GetNotificationsResponse({
    required this.data,
  });
  
  factory GetNotificationsResponse.fromJson(Map<String, Object?> json) => _$GetNotificationsResponseFromJson(json);
  
  final List<Notification> data;

  Map<String, Object?> toJson() => _$GetNotificationsResponseToJson(this);
}
