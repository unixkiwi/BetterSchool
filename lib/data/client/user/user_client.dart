// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/add_firebase_device_user_request.dart';
import '../models/change_school_user_request.dart';
import '../models/delete_user_auth_provider_user_socialite_response.dart';
import '../models/delete_user_firebase_device_id_response.dart';
import '../models/get_me_response.dart';
import '../models/get_user2fa_disable_response.dart';
import '../models/get_user2fa_enable_response.dart';
import '../models/get_user_response.dart';
import '../models/get_users_id2fa_disable_response.dart';
import '../models/get_users_id_newpassword_response.dart';
import '../models/get_users_id_response.dart';
import '../models/get_users_response.dart';
import '../models/object1.dart';
import '../models/object2.dart';
import '../models/post_password_user_request.dart';
import '../models/post_user2fa_verify_response.dart';
import '../models/post_user_firebase_device_response.dart';
import '../models/post_user_password_response.dart';
import '../models/post_user_resend_mail_response.dart';
import '../models/post_users_id_resend_mail_response.dart';
import '../models/put_user_response.dart';
import '../models/put_user_school_response.dart';
import '../models/put_users_id_response.dart';
import '../models/update_user_request.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String? baseUrl}) = _UserClient;

  /// User: Disable Two Factor
  @GET('/users/{id}/2fa/disable')
  Future<GetUsersId2faDisableResponse> userDisableTwoFactorById({
    @Path('id') required String id,
  });

  /// User: Get New Password
  @GET('/users/{id}/newpassword')
  Future<GetUsersIdNewpasswordResponse> userGetNewPassword({
    @Path('id') required String id,
  });

  /// User: Resend Mail
  @POST('/users/{id}/resend-mail')
  Future<PostUsersIdResendMailResponse> userResendMailById({
    @Path('id') required String id,
  });

  /// User: Index
  @GET('/users')
  Future<GetUsersResponse> usersIndex();

  /// User: Show
  @GET('/users/{id}')
  Future<GetUsersIdResponse> usersShow({@Path('id') required int? id});

  /// User: Update
  @PUT('/users/{id}')
  Future<PutUsersIdResponse> usersUpdate({
    @Path('id') required int? id,
    @Body() UpdateUserRequest? body,
  });

  /// User: Destroy
  @DELETE('/users/{id}')
  Future<void> usersDestroy({@Path('id') required int? id});

  /// User: Me
  @GET('/me')
  Future<GetMeResponse> userMe();

  /// User: Me
  @GET('/user')
  Future<GetUserResponse> userGet();

  /// User: Update
  @PUT('/user')
  Future<PutUserResponse> userUpdate1({@Body() UpdateUserRequest? body});

  /// User: Destroy
  @DELETE('/user')
  Future<void> userDestroy2();

  /// User: Add Membership.
  ///
  /// [body] - Name not received and was auto-generated.
  @POST('/user/token')
  Future<dynamic> userAddMembership({@Body() required Object1 body});

  /// User: Post Password
  @POST('/user/password')
  Future<PostUserPasswordResponse> userPostPassword({
    @Body() required PostPasswordUserRequest body,
  });

  /// User: Enable Two Factor
  @GET('/user/2fa/enable')
  Future<GetUser2faEnableResponse> userEnableTwoFactor();

  /// User: Disable Two Factor
  @GET('/user/2fa/disable')
  Future<GetUser2faDisableResponse> userDisableTwoFactor();

  /// User: Verify Two Factor.
  ///
  /// [body] - Name not received and was auto-generated.
  @POST('/user/2fa/verify')
  Future<PostUser2faVerifyResponse> userVerifyTwoFactor({
    @Body() Object2? body,
  });

  /// User: Add Firebase Device
  @POST('/user/firebase-device')
  Future<PostUserFirebaseDeviceResponse> userAddFirebaseDevice({
    @Body() required AddFirebaseDeviceUserRequest body,
  });

  /// User: Delete Firebase Device.
  ///
  /// [id] - **Optional**.
  @DELETE('/user/firebase-device/{id}')
  Future<DeleteUserFirebaseDeviceIdResponse> userDeleteFirebaseDevice({
    @Path('id') required String id,
    @Query('id') int? queryId,
    @Query('token') String? token,
  });

  /// User: Delete Socialite.
  ///
  /// [userSocialite] - The user socialite ID.
  @DELETE('/user/auth-provider/{userSocialite}')
  Future<DeleteUserAuthProviderUserSocialiteResponse> userDeleteSocialite({
    @Path('userSocialite') required int userSocialite,
  });

  /// User: Resend Mail
  @POST('/user/resend-mail')
  Future<PostUserResendMailResponse> userResendMail();

  /// User: Change School
  @PUT('/user/school')
  Future<PutUserSchoolResponse> userChangeSchool({
    @Body() required ChangeSchoolUserRequest body,
  });

  /// User: Logout API
  @GET('/me/logout')
  Future<void> userMeLogout();

  /// User: Logout API
  @GET('/user/logout')
  Future<void> userLogout();
}
