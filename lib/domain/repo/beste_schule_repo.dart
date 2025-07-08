import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/school_year.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/utils/time_utils.dart';

abstract class BesteSchuleRepo {
  Future<List<SchoolDay?>?> getWeek({
    required DateString dateString,
    bool force = false,
  });
  Future<List<Subject>?> getSubjects({bool force = false});
  Future<List<Grade>?> getGrades({bool force = false, SchoolYear? yearArg});
  Future<List<Grade>?> getAllGrades();
  Future<int?> getCurrentIntervalID({bool force = false});
  Future<String?> getCalculationRuleForSubject(
    int subjectID, {
    bool force = false,
  });
  Future<bool?> isUserStudent();
  Future<Map?> getAllData({SchoolYear? year});
  Future<List<SchoolYear>?> getSchoolYears();
  Future<SchoolYear?> getCurrentYear();
}
