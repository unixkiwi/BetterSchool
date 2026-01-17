// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/execute_notification_action_request.dart';
import '../models/get_notifications_response.dart';
import '../models/notification.dart';

part 'notification_client.g.dart';

@RestApi()
abstract class NotificationClient {
  factory NotificationClient(Dio dio, {String? baseUrl}) = _NotificationClient;

  @GET('/notifications')
  Future<GetNotificationsResponse> notificationsIndex();

  /// [notification] - The notification ID
  @POST('/notifications/{notification}/read')
  Future<Notification> notificationMarkRead({
    @Path('notification') required String notification,
  });

  /// [notification] - The notification ID
  @POST('/notifications/{notification}/action')
  Future<Notification> notificationExecuteAction({
    @Path('notification') required String notification,
    @Body() required ExecuteNotificationActionRequest body,
  });
}
