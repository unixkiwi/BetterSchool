import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:school_app/domain/models/beste_schule_oauth_client.dart';
import 'package:school_app/domain/repo/beste_schule_oauth_repo.dart';
import 'package:school_app/utils/logger.dart';

class BesteSchuleOauthRepoImpl extends BesteSchuleOauthRepo {
  late OAuth2Helper _helper;
  String? _token = "";

  OAuth2Helper get helper => _helper;

  BesteSchuleOauthRepoImpl() {
    client = BesteSchuleOauthClient(
      redirectUri: redirectUri,
      customUriScheme: customUriScheme,
    );

    _helper = OAuth2Helper(
      client,
      grantType: OAuth2Helper.authorizationCode,
      clientId: clientId,
      clientSecret: clientSecret,
    );
  }

  @override
  Future<String?> getTokenFromStorage() async {
    AccessTokenResponse? accessTokenResponse =
        await _helper.getTokenFromStorage();

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

  @override
  Future<String?> getToken({bool forceRequest = false}) async {
    if (!forceRequest && (_token != null && _token!.isNotEmpty)) {
      logger.d("[BesteSchule OAuth Client Impl] Returning token from 'cache'.");
      return _token;
    }

    // Try to get from storage if not forcing request
    if (!forceRequest) {
      var tokenFromStorage = await getTokenFromStorage();
      if (tokenFromStorage != null) {
        _token = tokenFromStorage;
        logger.i("[BesteSchule OAuth Client Impl] Loaded token from storage.");
        return _token;
      }
    }

    AccessTokenResponse? accessTokenResponse = await _helper.getToken();

    if (accessTokenResponse == null) {
      logger.e(
        "[BesteSchule OAuth Client Impl] getToken() AccesstokenResp was null!",
      );

      return null;
    }

    String? token = accessTokenResponse.accessToken;

    if (token == null) {
      logger.e(
        "[BesteSchule OAuth Client Impl] getToken() AccesstokenResp token was null!",
      );
    } else {
      _token = token;
    }

    return token;
  }
}
