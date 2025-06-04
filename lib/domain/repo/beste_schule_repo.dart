import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/subject.dart';

abstract class BesteSchuleRepo {
  Future<List<SchoolDay>?> getWeek({required int nr});
  Future<List<Subject>?> getSubjects();
  Future<List<Grade>?> getGrades();
  //TODO: add getGrades or something like that
}
