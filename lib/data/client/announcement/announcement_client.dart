// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_announcements_id_response.dart';
import '../models/get_announcements_response.dart';
import '../models/mark_read_announcement_request.dart';
import '../models/post_announcements_announcement_read_response.dart';
import '../models/post_announcements_response.dart';
import '../models/put_announcements_announcement_response.dart';
import '../models/store_announcement_request.dart';
import '../models/update_announcement_request.dart';

part 'announcement_client.g.dart';

@RestApi()
abstract class AnnouncementClient {
  factory AnnouncementClient(Dio dio, {String? baseUrl}) = _AnnouncementClient;

  /// Announcement: Store
  @POST('/announcements')
  Future<PostAnnouncementsResponse> announcementsStore({
    @Body() required StoreAnnouncementRequest body,
  });

  /// Announcement: Index
  @GET('/announcements')
  Future<GetAnnouncementsResponse> announcementsIndex();

  /// Announcement: Update.
  ///
  /// [announcement] - The announcement ID.
  @PUT('/announcements/{announcement}')
  Future<PutAnnouncementsAnnouncementResponse> announcementsUpdate({
    @Path('announcement') required int announcement,
    @Body() required UpdateAnnouncementRequest body,
  });

  /// Announcement: Destroy.
  ///
  /// [announcement] - The announcement ID.
  @DELETE('/announcements/{announcement}')
  Future<void> announcementsDestroy({
    @Path('announcement') required int announcement,
  });

  /// Announcement: Mark as read.
  ///
  /// [announcement] - The announcement ID.
  @POST('/announcements/{announcement}/read')
  Future<PostAnnouncementsAnnouncementReadResponse> announcementMarkRead({
    @Path('announcement') required int announcement,
    @Body() MarkReadAnnouncementRequest? body,
  });

  /// Announcement: Show
  @GET('/announcements/{id}')
  Future<GetAnnouncementsIdResponse> announcementsShow({
    @Path('id') required String id,
  });
}
