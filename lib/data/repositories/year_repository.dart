import 'package:betterschool/data/models/core/models.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/domain/models/year.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:betterschool/utils/result.dart';
import 'package:dio/dio.dart';

class YearRepository {
  final BesteSchuleApiClientImpl _apiClient;

  YearRepository(this._apiClient);

  Future<Result<List<SchoolYear>>> getYears() async {
    try {
      BesteSchuleApiResponse<List<YearModel>> response = await _apiClient
          .getYears();

      if (response.data != null) {
        List<YearModel> data = response.data!;
        List<SchoolYear> result = data
            .map(
              (yearModel) => SchoolYear(
                id: yearModel.id ?? SchoolYear.empty().id,
                name: yearModel.name ?? SchoolYear.empty().name,
                from: yearModel.from ?? SchoolYear.empty().from,
                to: yearModel.to ?? SchoolYear.empty().to,
              ),
            )
            .toList();

        return Result.success(result);
      } else {
        return Result.error(
          Exception(
            "Received data from the API is null!\nresponse.data = ${(response.data == null).toString()}",
          ),
        );
      }
    } on DioException catch (dioException) {
      return Result.error(dioException);
    } on Exception catch (e) {
      logger.e(e.runtimeType.toString());
      return Result.error(e);
    } catch (e) {
      logger.e(e.runtimeType.toString());
      return Result.error(Exception(e.toString()));
    }
  }
}
