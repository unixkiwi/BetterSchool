import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school_app/data/models/beste_schule_oauth_client_impl.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/utils/logger.dart';

class LoginPageViewmodel extends ChangeNotifier {
  final BesteSchuleRepo repo;
  String? _token;
  final BesteSchuleOauthClientImpl _client = BesteSchuleOauthClientImpl();

  BesteSchuleOauthClientImpl get clientImpl => _client;
  String? get token => _token;

  LoginPageViewmodel({required this.repo});

  Future<bool> login() async {
    logger.i("[LoginViewModel] login() called");
    notifyListeners();

    logger.i("[LoginViewModel] Awaiting token");
    _token = await _client.getToken(forceRequest: true);

    if (_token == null) {
      logger.e("[LoginViewModel] Awaited token is null");
    } else {
      logger.i("[LoginViewModel] Successfully awaited token;");
    }

    return _token != null;
  }
}
