import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth_webauth/oauth_webauth.dart';
import 'package:school_app/domain/models/beste_schule_oauth_client.dart';
import 'package:school_app/domain/repo/beste_schule_oauth_repo.dart';
import 'package:school_app/utils/logger.dart';

class BesteSchuleOauthWebviewRepoImpl extends BesteSchuleOauthRepo {

  BesteSchuleOauthWebviewRepoImpl() {
    client = BesteSchuleOauthClient(
      redirectUri: redirectUri,
      customUriScheme: customUriScheme,
    );
  }

  @override
  Future<String?> getTokenFromStorage() async {

  }

  @override
  Future<String?> getToken({bool forceRequest = false}) async {
    
  }

  Future<String?> loginV2(BuildContext context) async {
    String output = "Nothing";

    await OAuthWebScreen.start(
      context: context,
      configuration: OAuthConfiguration(
        authorizationEndpointUrl: BesteSchuleOauthClient.authorizeUrlString,
        tokenEndpointUrl: BesteSchuleOauthClient.tokenUrlString,
        clientSecret: clientSecret,
        clientId: clientId,
        redirectUrl: redirectUri,
        
        // BTN's
        refreshBtnVisible: false,
        clearCacheBtnVisible: false,
        closeBtnVisible: false,
        goBackBtnVisible: false,
        goForwardBtnVisible: false,
        // BTN's END

        onSuccessAuth: (credentials) {
          logger.i("[OAuth native] OAuth success");
          output = credentials.accessToken;
        },
        onError: (error) {
          logger.i("[OAuth native] Error: $error");
          output = error;
        },
        onCancel: () {
          logger.i("[OAuth native] Cancelled!");
          output = "Cancelled";
        },
      ),
    );

    return output;
  }

}
