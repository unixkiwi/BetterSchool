import 'package:flutter/foundation.dart';
import 'package:school_app/domain/models/day.dart';

abstract class BesteSchuleRepo extends ChangeNotifier {
  Future<List<SchoolDay>> getWeek({required int nr});
}
