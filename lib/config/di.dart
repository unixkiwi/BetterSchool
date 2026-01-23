import 'package:betterschool/data/repositories/auth/auth_repository.dart';
import 'package:betterschool/data/repositories/grades/grade_repo.dart';
import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:betterschool/data/repositories/timetable/timetable_repo.dart';
import 'package:betterschool/data/repositories/year_repository.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/ui/grades/bloc/grades_bloc.dart';
import 'package:betterschool/ui/settings/bloc/settings_bloc.dart';
import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:betterschool/utils/result.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt sl = GetIt.instance;

Future<void> initDependencies() async {
  sl.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage());
  sl.registerSingleton<AuthRepository>(AuthRepository(sl()));

  Dio dio = Dio(
    BaseOptions(
      contentType: "application/json",
      headers: {"Accept": "application/json"},
      connectTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 30),
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

  final prefs = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(prefs);

  sl.registerSingleton<SettingsRepository>(SettingsRepository());

  sl.registerSingleton(YearRepository(sl()));

  sl.registerSingleton(TimetableRepo(sl(), sl<SettingsRepository>()));

  sl.registerFactory(() => TimetableBloc(sl()));

  sl.registerSingleton(GradeRepo(sl(), sl<SettingsRepository>()));

  sl.registerFactory(() => GradesBloc(sl(), sl<SettingsRepository>()));

  sl.registerFactory<SettingsBloc>(
    () => SettingsBloc(sl<SettingsRepository>(), sl<YearRepository>()),
  );
}
