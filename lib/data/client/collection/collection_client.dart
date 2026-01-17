// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_collections_id_response.dart';
import '../models/get_collections_response.dart';
import '../models/post_collections_id_restore_response.dart';
import '../models/post_collections_response.dart';
import '../models/put_collections_id_response.dart';
import '../models/store_collection_request.dart';
import '../models/update_collection_request.dart';

part 'collection_client.g.dart';

@RestApi()
abstract class CollectionClient {
  factory CollectionClient(Dio dio, {String? baseUrl}) = _CollectionClient;

  /// Collection: Restore
  @POST('/collections/{id}/restore')
  Future<PostCollectionsIdRestoreResponse> collectionRestore({
    @Path('id') required String id,
  });

  /// Collection: Store
  @POST('/collections')
  Future<PostCollectionsResponse> collectionsStore({
    @Body() required StoreCollectionRequest body,
  });

  /// Collection: Index
  @GET('/collections')
  Future<GetCollectionsResponse> collectionsIndex();

  /// Collection: Update
  @PUT('/collections/{id}')
  Future<PutCollectionsIdResponse> collectionsUpdate({
    @Path('id') required String id,
    @Body() required UpdateCollectionRequest body,
  });

  /// Collection: Destroy
  @DELETE('/collections/{id}')
  Future<void> collectionsDestroy({
    @Path('id') required String id,
  });

  /// Collection: Show
  @GET('/collections/{id}')
  Future<GetCollectionsIdResponse> collectionsShow({
    @Path('id') required String id,
  });
}
