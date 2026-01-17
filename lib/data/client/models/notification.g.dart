// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
  id: json['id'] as String,
  notificationType: json['notification_type'] as String,
  availableActions: json['available_actions'] as String,
  createdAt: json['created_at'] as String,
  readAt: json['read_at'] as String,
  notifiableType: json['notifiable_type'] as String,
  data: json['data'] as String,
);

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notification_type': instance.notificationType,
      'available_actions': instance.availableActions,
      'created_at': instance.createdAt,
      'read_at': instance.readAt,
      'notifiable_type': instance.notifiableType,
      'data': instance.data,
    };
