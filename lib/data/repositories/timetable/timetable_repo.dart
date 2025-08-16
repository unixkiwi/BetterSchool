import 'package:betterschool/data/models/core/models.dart';
import 'package:betterschool/data/models/timetable/models.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/utils/result.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:dio/dio.dart';

class TimetableRepo {
  final BesteSchuleApiClientImpl _apiClient;

  TimetableRepo(this._apiClient);

  Future<Result<SchoolWeekModel>> getWeek(WeekString weekId) async {
    try {
      BesteSchuleApiResponse<SchoolWeekModel> response = await _apiClient
          .getWeek(weekId: weekId.toString());

      if (response.data != null && response.data!.days != null) {
        return Result.success(response.data!);
      } else {
        return Result.error(
          Exception(
            "Received data from the API is null!\nresponse.data = ${(response.data == null).toString()}\nresponse.data.days = ${(response.data?.days == null).toString()}",
          ),
        );
      }
    } on DioException catch (dioException) {
      return Result.error(dioException);
    } on Exception catch (e) {
      return Result.error(e);
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}
