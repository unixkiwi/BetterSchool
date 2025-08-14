import 'package:betterschool/data/repositories/auth/auth_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void initDependencies() {
  sl.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage());
  sl.registerSingleton<AuthRepository>(AuthRepository(sl()));
}
