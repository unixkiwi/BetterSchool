import 'package:school_app/domain/models/beste_schule_oauth_client.dart';

abstract class BesteSchuleOauthRepo {
  final String redirectUri = "schoolapp://oauth2redirect";
  final String customUriScheme = "schoolapp";
  final String clientId = "116";
  final String clientSecret = "FBOHIDUwyqohpExzi9OKTlzXTLIjpde8Vsn4IaSo";

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
