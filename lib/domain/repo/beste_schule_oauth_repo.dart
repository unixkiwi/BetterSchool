import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:school_app/domain/models/beste_schule_oauth_client.dart';

abstract class BesteSchuleOauthRepo {
  final String redirectUri = "schoolapp://oauth2redirect";
  final String customUriScheme = "schoolapp";
  final String clientId = dotenv.env['BESTE_SCHULE_CLIENT_ID'] ??= "100";
  final String clientSecret =
      dotenv.env['BESTE_SCHULE_CLIENT_SECRET'] ??= "1234";

  late BesteSchuleOauthClient client;

  BesteSchuleOauthRepo() {
    client = BesteSchuleOauthClient(
      redirectUri: redirectUri,
      customUriScheme: customUriScheme,
    );
  }

  Future<String?> getTokenFromStorage();
  Future<String?> getToken({bool forceRequest = false});
}


