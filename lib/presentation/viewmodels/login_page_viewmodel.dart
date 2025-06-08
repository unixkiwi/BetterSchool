import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:school_app/domain/models/beste_schule_oauth_client.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/utils/logger.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoginPageViewmodel extends ChangeNotifier {
  final BesteSchuleRepo repo;
  bool isLoggedIn = false;
  String? loginResult;

  LoginPageViewmodel({required this.repo});

  Future<bool> login() async {
    logger.i("[LoginViewModel] login() called");
    loginResult = null;
    notifyListeners();

    BesteSchuleOauthClient client = BesteSchuleOauthClient(
      redirectUri: 'schoolapp://oauth2redirect',
      customUriScheme: 'schoolapp',
    );

    final clientId = dotenv.env['BESTE_SCHULE_CLIENT_ID'];
    final clientSecret = dotenv.env['BESTE_SCHULE_CLIENT_SECRET'];

    if (clientId == null || clientSecret == null) {
      loginResult =
          "Error: Missing environment variables. Please check .env file";
      notifyListeners();
      return false;
    }

    OAuth2Helper helper = OAuth2Helper(
      client,
      grantType: OAuth2Helper.authorizationCode,
      clientId: clientId,
      clientSecret: clientSecret,
    );

    //TODO figure out why the webview launches authorize
    logger.i("[LoginViewModel] Making Request");
    try {
      http.Response resp = await helper.get(
        'https://beste.schule/api/students',
        headers: {
          'Authorization': 'Bearer ${helper.tokenStorage.key}',
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );
      logger.i("[LoginViewModel] Finished request");

      if (resp.statusCode == 200) {
        logger.i("Response: ${resp.body}");
        loginResult = resp.body;
        isLoggedIn = true;
        notifyListeners();
        return true;
      } else {
        loginResult = "Error: ${resp.statusCode}\n${resp.body}";
        notifyListeners();
        return false;
      }
    } catch (e) {
      loginResult = "Exception: $e";
      notifyListeners();
      return false;
    }
  }
}
