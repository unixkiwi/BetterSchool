// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/batch_guardian_request.dart';
import '../models/batch_token_guardian_request.dart';
import '../models/delete_guardians_guardian_user_response.dart';
import '../models/delete_guardians_id_token_response.dart';
import '../models/get_guardians_id_response.dart';
import '../models/get_guardians_id_token_response.dart';
import '../models/get_guardians_response.dart';
import '../models/post_guardians_batch_response.dart';
import '../models/post_guardians_id_restore_response.dart';
import '../models/post_guardians_response.dart';
import '../models/post_guardians_token_response.dart';
import '../models/put_guardians_id_response.dart';
import '../models/store_guardian_request.dart';
import '../models/update_guardian_request.dart';

part 'guardian_client.g.dart';

@RestApi()
abstract class GuardianClient {
  factory GuardianClient(Dio dio, {String? baseUrl}) = _GuardianClient;

  /// Guardian: Index
  @GET('/guardians')
  Future<GetGuardiansResponse> guardiansIndex();

  /// Guardian: Store
  @POST('/guardians')
  Future<PostGuardiansResponse> guardiansStore({
    @Body() required StoreGuardianRequest body,
  });

  /// Guardian: Show
  @GET('/guardians/{id}')
  Future<GetGuardiansIdResponse> guardiansShow({
    @Path('id') required String id,
  });

  /// Guardian: Update
  @PUT('/guardians/{id}')
  Future<PutGuardiansIdResponse> guardiansUpdate({
    @Path('id') required String id,
    @Body() UpdateGuardianRequest? body,
  });

  /// Guardian: Destroy
  @DELETE('/guardians/{id}')
  Future<void> guardiansDestroy({
    @Path('id') required int id,
  });

  /// Teacher: Batch Token.
  ///
  /// Creates tokens for guardians by given IDs.
  /// Tokens are only shown the first time they are generated.
  @POST('/guardians/token')
  Future<PostGuardiansTokenResponse> guardianBatchToken({
    @Body() required BatchTokenGuardianRequest body,
  });

  /// Student: Batch
  @POST('/guardians/batch')
  Future<PostGuardiansBatchResponse> guardianBatch({
    @Body() BatchGuardianRequest? body,
  });

  /// Guardian: Refresh Token
  @GET('/guardians/{id}/token')
  Future<GetGuardiansIdTokenResponse> guardianRefreshToken({
    @Path('id') required String id,
  });

  /// Student: Remove Token
  @DELETE('/guardians/{id}/token')
  Future<DeleteGuardiansIdTokenResponse> guardianRemoveToken({
    @Path('id') required String id,
  });

  /// Guardian: Restore
  @POST('/guardians/{id}/restore')
  Future<PostGuardiansIdRestoreResponse> guardianRestore({
    @Path('id') required String id,
  });

  /// Guardian: Remove User.
  ///
  /// [guardian] - The guardian ID.
  @DELETE('/guardians/{guardian}/user')
  Future<DeleteGuardiansGuardianUserResponse> guardianRemoveUser({
    @Path('guardian') required int guardian,
  });
}
