import 'package:betterschool/data/models/core/models.dart';
import 'package:betterschool/data/models/grades/models.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/domain/models/grade.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:betterschool/utils/result.dart';
import 'package:dio/dio.dart';
import 'package:remote_caching/remote_caching.dart';

class GradeRepo {
  final BesteSchuleApiClientImpl _apiClient;

  GradeRepo(this._apiClient);

  int _getGrade(String? grade) =>
      grade == null ? -1 : int.tryParse(grade[0]) ?? -1;

  double _getGradeWithModifiers(String? value) {
    if (value == null) {
      return -1;
    } else if (value.length == 1) {
      return _getGrade(value) * 1.0;
    } else {
      if (value == "1+") return 1.0;
      if (value == "6-") return 6.0;

      if (value.endsWith('+')) {
        return double.parse(value[0]) - 0.3;
      } else if (value.endsWith('-')) {
        return double.parse(value[0]) + 0.3;
      } else {
        return double.parse(value);
      }
    }
  }

  List<Grade> _getGradesFromModel(List<GradeModel> grades) {
    List<Grade> result = [];

    for (GradeModel grade in grades) {
      result.add(
        Grade(
          value: _getGrade(grade.value?.trim()),
          valueWithModifiers: _getGradeWithModifiers(grade.value?.trim()),
          valueString: grade.value ?? Grade.empty().valueString,
          title: grade.collection.name ?? Grade.empty().title,
          type: grade.collection.type ?? Grade.empty().type,
          subject: Subject(
            id: grade.collection.subject?.id ?? Subject.empty().id,
            local_id:
                grade.collection.subject?.local_id ?? Subject.empty().local_id,
            name: grade.collection.subject?.name ?? Subject.empty().name,
          ),
          date: grade.givenAt ?? Grade.empty().date,
        ),
      );
    }

    return result;
  }

  Future<BesteSchuleApiResponse<List<GradeModel>>> getGradesWithLogging({
    bool forceRefresh = false,
  }) async {
    final cacheKey = "grades";
    logger.d('🔍 Cache key: $cacheKey');
    logger.d('🔄 Force refresh: $forceRefresh');

    try {
      final result = await RemoteCaching.instance
          .call<BesteSchuleApiResponse<List<GradeModel>>>(
            cacheKey,
            cacheDuration: Duration(hours: 12),
            forceRefresh: forceRefresh,
            remote: () async {
              logger.i('🌐 CACHE MISS - Making network request for grades');
              final response = await _apiClient.getGrades();
              logger.d('✅ Network request completed');
              return response;
            },
            fromJson: (json) {
              logger.i('📦 CACHE HIT - Deserializing from cache');
              return BesteSchuleApiResponse<List<GradeModel>>.fromJson(
                json as Map<String, dynamic>,
                (json) => (json as List<dynamic>)
                    .map<GradeModel>(
                      (item) =>
                          GradeModel.fromJson(item as Map<String, dynamic>),
                    )
                    .toList(),
              );
            },
          );

      logger.d('✅ (Cache-)Request completed successfully');
      return result;
    } catch (e) {
      logger.e('❌ Error in cached request: $e');
      rethrow;
    }
  }

  Future<Result<List<Grade>>> getGrades({bool forceRefresh = false}) async {
    try {
      BesteSchuleApiResponse<List<GradeModel>> response =
          await getGradesWithLogging(forceRefresh: forceRefresh);

      if (response.data != null) {
        List<GradeModel> data = response.data!;

        List<Grade> result = _getGradesFromModel(data);

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
