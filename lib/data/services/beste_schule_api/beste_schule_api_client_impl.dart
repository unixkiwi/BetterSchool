import 'package:betterschool/data/models/core/models.dart';
import 'package:betterschool/data/models/timetable/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'beste_schule_api_client_impl.g.dart';

@RestApi()
abstract class BesteSchuleApiClientImpl {
  factory BesteSchuleApiClientImpl(Dio dio, {String? baseUrl}) =
      _BesteSchuleApiClientImpl;

  @GET('https://beste.schule/api/journal/weeks/{id}')
  Future<BesteSchuleApiResponse<SchoolWeekModel>> getWeek({
    @Path("id") required String weekId,
    @Query("include") String include = "days.lessons",
    @Query("interpolate") String interpolate = "true",
  });
}
