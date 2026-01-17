// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_types_announcement_id_response.dart';
import '../models/get_types_announcement_response.dart';
import '../models/post_types_announcement_response.dart';
import '../models/put_types_announcement_id_response.dart';
import '../models/store_announcement_type_request.dart';
import '../models/update_announcement_type_request.dart';

part 'announcement_type_client.g.dart';

@RestApi()
abstract class AnnouncementTypeClient {
  factory AnnouncementTypeClient(Dio dio, {String? baseUrl}) = _AnnouncementTypeClient;

  /// AnnouncementType: Store
  @POST('/types/announcement')
  Future<PostTypesAnnouncementResponse> announcementStore({
    @Body() required StoreAnnouncementTypeRequest body,
  });

  /// AnnouncementType: Index
  @GET('/types/announcement')
  Future<GetTypesAnnouncementResponse> announcementTypeIndex();

  /// AnnouncementType: Show
  @GET('/types/announcement/{id}')
  Future<GetTypesAnnouncementIdResponse> announcementShow({
    @Path('id') required String id,
  });

  /// AnnouncementType: Update
  @PUT('/types/announcement/{id}')
  Future<PutTypesAnnouncementIdResponse> announcementUpdate({
    @Path('id') required String id,
    @Body() required UpdateAnnouncementTypeRequest body,
  });

  /// AnnouncementType: Destroy
  @DELETE('/types/announcement/{id}')
  Future<void> announcementDestroy({
    @Path('id') required String id,
  });
}
