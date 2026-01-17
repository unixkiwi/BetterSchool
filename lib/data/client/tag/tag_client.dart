// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_types_tags_id_response.dart';
import '../models/get_types_tags_response.dart';
import '../models/post_types_tags_response.dart';
import '../models/put_types_tags_id_response.dart';
import '../models/store_tag_request.dart';
import '../models/update_tag_request.dart';

part 'tag_client.g.dart';

@RestApi()
abstract class TagClient {
  factory TagClient(Dio dio, {String? baseUrl}) = _TagClient;

  /// Tag: Store
  @POST('/types/tags')
  Future<PostTypesTagsResponse> tagsStore({
    @Body() required StoreTagRequest body,
  });

  /// Tag: Index
  @GET('/types/tags')
  Future<GetTypesTagsResponse> tagIndex({
    @Query('filter') String? filter,
  });

  /// Tag: Show
  @GET('/types/tags/{id}')
  Future<GetTypesTagsIdResponse> tagsShow({
    @Path('id') required String id,
  });

  /// Tag: Update
  @PUT('/types/tags/{id}')
  Future<PutTypesTagsIdResponse> tagsUpdate({
    @Path('id') required String id,
    @Body() required UpdateTagRequest body,
  });

  /// Tag: Destroy
  @DELETE('/types/tags/{id}')
  Future<void> tagsDestroy({
    @Path('id') required String id,
  });
}
