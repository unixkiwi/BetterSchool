// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable()
class Notification {
  const Notification({
    required this.id,
    required this.notificationType,
    required this.availableActions,
    required this.createdAt,
    required this.readAt,
    required this.notifiableType,
    required this.data,
  });
  
  factory Notification.fromJson(Map<String, Object?> json) => _$NotificationFromJson(json);
  
  final String id;
  @JsonKey(name: 'notification_type')
  final String notificationType;
  @JsonKey(name: 'available_actions')
  final String availableActions;
  @JsonKey(name: 'created_at')
  final String createdAt;

  /// only output date, not time
  @JsonKey(name: 'read_at')
  final String readAt;
  @JsonKey(name: 'notifiable_type')
  final String notifiableType;
  final String data;

  Map<String, Object?> toJson() => _$NotificationToJson(this);
}
