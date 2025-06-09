import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:school_app/domain/models/beste_schule_oauth_client.dart';
import 'package:school_app/utils/logger.dart';

class BesteSchuleOauthClientImpl {
  final String redirectUri = "schoolapp://oauth2redirect";
  final String customUriScheme = "schoolapp";
  final String clientId = dotenv.env['BESTE_SCHULE_CLIENT_ID'] ??= "100";
  final String clientSecret =
      dotenv.env['BESTE_SCHULE_CLIENT_SECRET'] ??= "1234";

  late BesteSchuleOauthClient _client;
  late OAuth2Helper _helper;

  BesteSchuleOauthClient get client => _client;

  OAuth2Helper get helper => _helper;

  BesteSchuleOauthClientImpl() {
    _client = BesteSchuleOauthClient(
      redirectUri: redirectUri,
      customUriScheme: customUriScheme,
    );

    _helper = OAuth2Helper(
      _client,
      grantType: OAuth2Helper.authorizationCode,
      clientId: clientId,
      clientSecret: clientSecret,
    );
  }

  Future<String?> getTokenFromStorage() async {
    AccessTokenResponse? accessTokenResponse = await _helper.getTokenFromStorage();

    if (accessTokenResponse == null) {
      logger.e(
        "[BesteSchule OAuth Client Impl] getTokenFromStorage() AccesstokenResp was null!",
      );
    }

    String? token = accessTokenResponse!.accessToken;

    if (token == null) {
      logger.e(
        "[BesteSchule OAuth Client Impl] getTokenFromStorage() AccesstokenResp token was null!",
      );
    }

    return token;
  }

  Future<String?> getToken() async {
    AccessTokenResponse? accessTokenResponse = await _helper.getToken();

    if (accessTokenResponse == null) {
      logger.e(
        "[BesteSchule OAuth Client Impl] getToken() AccesstokenResp was null!",
      );
    }

    String? token = accessTokenResponse!.accessToken;

    if (token == null) {
      logger.e(
        "[BesteSchule OAuth Client Impl] getToken() AccesstokenResp token was null!",
      );
    }

    return token;
  }
}
