import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/school_year.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/domain/settings/settings_provider.dart';
import 'package:school_app/utils/logger.dart';

class GradesPageViewmodel extends ChangeNotifier {
  final BesteSchuleRepo repo;

  bool _isLoading = false;
  bool _dataFetched = false;

  List<Grade> _grades = [];
  List<Subject> _subjects = [];
  Map<Subject, double> _averages = {};
  Map<Subject, String> _calcRules = {};

  bool get isLoading => _isLoading;
  bool get dataFetched => _dataFetched;
  List<Grade> get grades => _grades;
  Map<Subject, double> get averages => _averages;
  Map<Subject, String> get calcRules => _calcRules;

  double _totalAvg = -1;
  double get totalAvg => _totalAvg;

  GradesPageViewmodel({required this.repo});

  Future<void> fetchData({bool force = false}) async {
    logger.d("[Grades ViewModel] Called fetchData()");

    // check if not already loading
    if (_isLoading) {
      logger.i(
        "[Grades ViewModel] Could not fetch data again, already fetching data!",
      );
      return;
    }

    // set meta variables
    _isLoading = true;

    // Fetch all grades
    final grades = await repo.getGrades(force: force);
    if (grades != null) {
      logger.i("[Grades VM] Fetched all grades from repo!");
      _grades = grades;
    }

    final subjects = await repo.getSubjects(force: force);
    if (subjects != null) {
      logger.i("[Grades VM] Fetched all subjects from repo!");
      _subjects = subjects;
    }

    Map<Subject, String> calcRules = {};
    for (Subject subject in _subjects) {
      final String? calcRule = await repo.getCalculationRuleForSubject(
        subject.id,
        force: force,
      );

      if (calcRule != null) {
        calcRules[subject] = calcRule;
      }
    }

    _calcRules = calcRules;

    logger.i("Calculating averages!");
    _averages = await getAveragesForAllSubjects();
    _totalAvg = _calculateTotalAvg();

    // set meta variables
    _dataFetched = true;
    _isLoading = false;
    notifyListeners();
  }

  List<Grade> getGradesFromSubject(Subject subject) {
    logger.d("[Grades ViewModel] Called getGradesFromSubject()");

    for (final subjectIt in _subjects) {
      if (subjectIt.id == subject.id) {
        // get grades for the subject
        final subjectGrades = _grades
            .where((g) => g.subject.id == subject.id)
            .toList();

        // sort by date, newest first
        subjectGrades.sort((a, b) => b.date.compareTo(a.date));

        return subjectGrades;
      }
    }

    return [];
  }

  Future<Map<SchoolYear, double>> getYearsAvg() async {
    logger.d("[Grade ViewModel] Called getYearsAvg()");

    List<SchoolYear> years = [];
    Map<SchoolYear, double> averages = {};

    List<SchoolYear>? resp = await repo.getSchoolYears();

    if (resp != null && resp.isNotEmpty) {
      for (SchoolYear year in resp) {
        List<Grade>? grades = await repo.getGrades(yearArg: year);

        if (grades != null && grades.isNotEmpty) {
          double sum = 0.0;

          for (var grade in grades) {
            sum += SettingsProvider.instance.usePlainGradeValue
                ? grade.plainValue.toDouble()
                : grade.value;
          }

          averages[year] = sum / grades.length;
        } else {
          logger.e(
            "[GradesPageViewmodel] Data from getYearsAvg.getGrades(year: ${year.id}) was empty",
          );
        }
      }
    } else {
      logger.e("[GradesPageViewmodel] Data from getYearsAvg was empty");
    }

    return averages;
  }

  Future<double> getTotalAvg({List<Grade>? grades}) async {
    logger.d("[Grades ViewModel] Called getTotalAvg()");

    Map<Subject, double> avgs = await getAveragesForAllSubjects(
      gradesArg: grades,
    );

    if (_averages.isEmpty) return -1;

    return _calculateTotalAvg(avgsArg: avgs);
  }

  double _calculateTotalAvg({Map<Subject, double>? avgsArg}) {
    if (avgsArg == null && _averages.isEmpty) return -1;

    Map<Subject, double> avgs = avgsArg ?? _averages;

    double sum = 0;
    for (MapEntry<Subject, double> entry in avgs.entries) {
      sum += entry.value;
    }
    return sum / avgs.values.length;
  }

  Future<Map<Subject, double>> getAveragesForAllSubjects({
    List<Grade>? gradesArg,
  }) async {
    logger.d("[Grades ViewModel] Called getAveragesForAllSubjects()");

    List<Grade> grades = gradesArg ?? _grades;

    Map<Subject, double> averages = {};

    for (final subject in _subjects) {
      // get grades for the subject
      final subjectGrades = grades
          .where((g) => g.subject.id == subject.id)
          .toList();

      // skip subjects with no grades
      if (subjectGrades.isEmpty) continue;

      // get calculation_rule for the subject
      final rule = _calcRules[subject];

      // calculate avg
      final avg = calculateAverage(
        subjectGrades,
        rule,
        usePlain: SettingsProvider.instance.usePlainGradeValue,
      );

      if (gradesArg == null) averages[subject] = avg;
    }

    logger.i("[Grades ViewModel] Calculated all averages!");

    return averages;
  }

  // CALCULATE AVERATE -START-
  Set<String> extractTypesFromRule(String? rule) {
    if (rule == null) return {};
    final regex = RegExp(
      r'([A-Za-z]+)_sum|([A-Za-z]+)_count',
      caseSensitive: false,
    );
    final matches = regex.allMatches(rule);
    final types = <String>{};
    for (final match in matches) {
      types.add((match.group(1) ?? match.group(2)!));
    }
    return types;
  }

  double calculateAverage(
    List<Grade> grades,
    String? calculationRule, {
    bool usePlain = false,
  }) {
    if (grades.isEmpty) {
      logger.i(
        "[Grades ViewModel] calculateAverage(): given grades list is empty",
      );
      return -1;
    }

    // no rule, just default sum divided by the count
    if (calculationRule == null) {
      final sum = grades.fold<double>(
        0.0,
        (prev, g) => prev + g.getValue(usePlain),
      );

      return sum / grades.length;
    }

    // extract types
    final types = extractTypesFromRule(calculationRule);

    // get typeSums and typeCounts
    final Map<String, double> typeSums = {};
    final Map<String, int> typeCounts = {};

    for (final type in types) {
      // get all grades with a specific type
      final matching = grades
          .where((g) => g.type.toLowerCase() == type.toLowerCase())
          .toList();

      // iterates over mathing and sums values
      // starts at 0.0, value is the current summed up value
      final sum = matching.fold<double>(
        0.0,
        (value, g) => value + g.getValue(usePlain),
      );
      final count = matching.length;

      typeSums[type] = sum;
      typeCounts[type] = count;
    }

    // replace variables of the rule
    String rule = calculationRule;

    typeSums.forEach((type, sum) {
      rule = rule.replaceAll('${type}_sum', sum.toString());
    });

    typeCounts.forEach((type, count) {
      rule = rule.replaceAll('${type}_count', count.toString());
    });

    logger.d("Rule: $rule");

    // evaluate the grade
    GrammarParser parser = GrammarParser();
    RealEvaluator realEvaluator = RealEvaluator();
    Expression expr = parser.parse(rule);
    double result = realEvaluator.evaluate(expr).toDouble();
    return result;
  }

  // CALCULATE AVERATE -END-
}
