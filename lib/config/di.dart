import 'package:betterschool/data/repositories/auth/auth_repository.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/ui/timetable/pages/bloc/timetable_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void initDependencies() {
  Dio dio = Dio();

  sl.registerSingleton(dio);
  sl.registerSingleton(BesteSchuleApiClientImpl(sl()));
  sl.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage());
  sl.registerSingleton<AuthRepository>(AuthRepository(sl()));

  sl.registerFactory(() => TimetableBloc(sl()));
}
