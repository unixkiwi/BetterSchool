import 'package:betterschool/data/repositories/auth/auth_repository.dart';
import 'package:betterschool/data/repositories/timetable/timetable_repo.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:betterschool/utils/result.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void initDependencies() {
  sl.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage());
  sl.registerSingleton<AuthRepository>(AuthRepository(sl()));

  Dio dio = Dio(
    BaseOptions(
      contentType: "application/json",
      headers: {"Accept": "application/json"},
    ),
  );

  sl.registerSingleton(dio);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        Result<String> token = await sl<AuthRepository>().getToken();

        if (token is Success<String>) {
          options.headers['Authorization'] = 'Bearer ${token.value}';
          return handler.next(options);
        }
      },
    ),
  );

  sl.registerSingleton(BesteSchuleApiClientImpl(sl()));

  sl.registerSingleton(TimetableRepo(sl()));

  sl.registerFactory(() => TimetableBloc(sl()));
}
