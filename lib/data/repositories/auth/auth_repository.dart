import 'package:betterschool/config/constants.dart';
import 'package:betterschool/utils/result.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepository {
  final FlutterSecureStorage _storage;

  AuthRepository(this._storage);

  Future<void> storeToken(String token) async {
    await _storage.write(key: tokenKey, value: token);
  }

  Future<Result<String>> getToken() async {
    try {
      String? token = await _storage.read(key: tokenKey);

      if (token == null) {
        return Result.error(Exception("Token from storage was null!"));
      } else {
        return Result.success(token);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
