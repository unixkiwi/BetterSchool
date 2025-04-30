import 'package:school_app/domain/models/day.dart';

abstract class BesteSchuleRepo {
  Future<List<SchoolDay>?> getWeek({required int nr});
}
