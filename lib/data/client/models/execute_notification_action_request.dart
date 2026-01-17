// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'execute_notification_action_request.g.dart';

@JsonSerializable()
class ExecuteNotificationActionRequest {
  const ExecuteNotificationActionRequest({
    required this.action,
  });
  
  factory ExecuteNotificationActionRequest.fromJson(Map<String, Object?> json) => _$ExecuteNotificationActionRequestFromJson(json);
  
  final String action;

  Map<String, Object?> toJson() => _$ExecuteNotificationActionRequestToJson(this);
}
