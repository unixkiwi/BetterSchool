import 'dart:developer';

import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';

class GradesPageViewmodel extends ChangeNotifier {
  final BesteSchuleRepo repo;
  
  bool _isLoading = false;
  bool _dataFetched = false;

  List<Grade> _grades = [];
  List<Subject> _subjects = [];
  Map<Subject, double> _averages = {};

  bool get isLoading => _isLoading;
  bool get dataFetched => _dataFetched;
  List<Grade> get grades => _grades;
  Map<Subject, double> get averages => _averages;

  GradesPageViewmodel({required this.repo});

  Future<void> fetchData() async {
    if (_isLoading) return;

    // set meta variables
    _isLoading = true;

    // Fetch all grades
    final grades = await repo.getGrades();
    if (grades != null) {
      _grades = grades;
    }

    final subjects = await repo.getSubjects();
    if (subjects != null) {
      _subjects = subjects;
    }

    _averages = await getAveragesForAllSubjects();

    // set meta variables
    _dataFetched = true;
    _isLoading = false;
    notifyListeners();
  }

  Future<Map<Subject, double>> getAveragesForAllSubjects() async {
    Map<Subject, double> averages = {};

    for (final subject in _subjects) {
      // get grades for the subject
      final subjectGrades = _grades.where((g) => g.subject == subject).toList();

      // get calculation_rule for the subject
      final rule = await repo.getCalculationRuleForSubject(subject.id);
      
      // calculate avg
      final avg = calculateAverage(subjectGrades, rule);
      averages[subject] = avg;
    }

    return averages;
  }

  // CALCULATE AVERATE -START-
  Set<String> extractTypesFromRule(String? rule) {
    if (rule == null) return {};
    final regex = RegExp(r'([A-Za-z]+)_sum|([A-Za-z]+)_count', caseSensitive: false);
    final matches = regex.allMatches(rule);
    final types = <String>{};
    for (final match in matches) {
      types.add((match.group(1) ?? match.group(2)!));
    }
    return types;
  }

  double calculateAverage(List<Grade> grades, String? calculationRule) {
    if (grades.isEmpty) return 1.0;

    if (calculationRule == null) {
      double sum = 0;
      for (final g in grades) {
        sum += g.value;
      }

      return sum / grades.length;
    }

    // extract types
    final types = extractTypesFromRule(calculationRule);

    // get typeSums and typeCounts
    final Map<String, double> typeSums = {};
    final Map<String, int> typeCounts = {};

    for (final type in types) {
      // get all grades with a specific type
      final matching = grades.where((g) =>
        g.type.toLowerCase() == type.toLowerCase()
      ).toList();

      // iterates over mathing and sums values 
      // starts at 0.0, value is the current summed up value
      final sum = matching.fold(0.0, (value, g) => value + g.value);
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

    log("Rule: $rule");

    // evaluate the grade
    GrammarParser parser = GrammarParser();
    Expression expr = parser.parse(rule);
    double result = expr.evaluate(EvaluationType.REAL, ContextModel());
    return result;
  }
  // CALCULATE AVERATE -END-

  
}
