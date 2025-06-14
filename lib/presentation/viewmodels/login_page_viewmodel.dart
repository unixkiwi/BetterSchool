import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school_app/data/models/oauth_repo_impl_oauth_client_pkg.dart';
import 'package:school_app/data/models/oauth_repo_impl_webview.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/utils/logger.dart';

class LoginPageViewmodel extends ChangeNotifier {
  final BesteSchuleRepo repo;
  String? _token;
  final BesteSchuleOauthWebviewRepoImpl _repo = BesteSchuleOauthWebviewRepoImpl();

  BesteSchuleOauthWebviewRepoImpl get repoImpl => _repo;
  String? get token => _token;

  LoginPageViewmodel({required this.repo});

  Future<bool> login(BuildContext context) async {
    logger.i("[LoginViewModel] login() called");
    notifyListeners();

    logger.i("[LoginViewModel] Awaiting token");
    _token = await _repo.getToken(forceRequest: true, context: context);

    if (_token == null) {
      logger.e("[LoginViewModel] Awaited token is null");
    } else {
      logger.i("[LoginViewModel] Successfully awaited token;");

      logger.i("[LoginViewModel] Checking wether the user is a student...");
      bool? isStudent = await repo.isUserStudent();

      if (isStudent != null) {
        if (!isStudent) {
          return false;
        }
      }
    }

    return _token != null;
  }
}
