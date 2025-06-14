import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:oauth_webauth/oauth_webauth.dart';
import 'package:school_app/domain/models/beste_schule_oauth_client.dart';
import 'package:school_app/domain/repo/beste_schule_oauth_repo.dart';
import 'package:school_app/utils/logger.dart';

class BesteSchuleOauthWebviewRepoImpl extends BesteSchuleOauthRepo {
  static const _storage = FlutterSecureStorage();
  static const _tokenKey = 'beste_schule_access_token';

  BesteSchuleOauthWebviewRepoImpl() {
    client = BesteSchuleOauthClient(
      redirectUri: redirectUri,
      customUriScheme: customUriScheme,
    );
  }

  @override
  Future<String?> getTokenFromStorage() async {
    // get token from storage
    final token = await _storage.read(key: _tokenKey);
    if (token == null) {
      logger.i("[OAuth native] No token found in secure storage.");
    }
    return token;
  }

  @override
  Future<String?> getToken({
    bool forceRequest = false,
    BuildContext? context,
  }) async {
    // try getting token from storage
    if (!forceRequest) {
      final token = await getTokenFromStorage();
      if (token != null && token.isNotEmpty) {
        logger.i("[OAuth native] Loaded token from secure storage.");
        return token;
      }
    }

    // when no context is provided the webview can't be shown -> return null
    if (context == null) {
      logger.e("[OAuth native] No BuildContext provided for login.");
      return null;
    }

    // start *native* oauth webview
    String? token;
    await OAuthWebScreen.start(
      context: context,
      configuration: OAuthConfiguration(
        authorizationEndpointUrl: BesteSchuleOauthClient.authorizeUrlString,
        tokenEndpointUrl: BesteSchuleOauthClient.tokenUrlString,
        clientSecret: clientSecret,
        clientId: clientId,
        redirectUrl: redirectUri,

        // BTN'S
        refreshBtnVisible: true,
        clearCacheBtnVisible: false,
        closeBtnVisible: true,
        goBackBtnVisible: false,
        goForwardBtnVisible: false,
        // BTN'S END

        onSuccessAuth: (credentials) async {
          logger.i("[OAuth native] OAuth success");
          token = credentials.accessToken;
          
          // save token to secure storage
          await _storage.write(key: _tokenKey, value: token);
        },
        onError: (error) {
          logger.e("[OAuth native] Error: $error");
          token = null;
        },
        onCancel: () {
          logger.w("[OAuth native] Cancelled!");
          token = null;
        },
      ),
    );

    return token;
  }
}
