import 'package:betterschool/data/repositories/auth_repository.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void initDependencies() {
  sl.registerSingleton<AuthRepository>(AuthRepository());
}
