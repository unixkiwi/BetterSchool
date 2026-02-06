import 'package:betterschool/config/di.dart';
import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:betterschool/domain/models/grade.dart';
import 'package:betterschool/domain/models/grade_calculation_rule.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/ui/core/themes/grades_page_colors.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class GradeSubjectData {
  final Subject subject;
  final List<Grade> grades;
  final double average;

  GradeSubjectData({
    required this.subject,
    required this.grades,
    required this.average,
  });
}

List<GradeSubjectData> groupGradesBySubject(
  List<Grade> grades, {
  bool useModifier = false,
  bool useBesteSchuleFormula = false,
  List<GradeCalculationRule>? calculationRules,
}) {
  if (calculationRules != null) {
    logger.d(
      'Grouping grades by subject with calculation rules: ${calculationRules.map((e) => 'Subject ID: ${e.subjectId}, Rule: ${e.rule}').join('; ')}',
    );
  }

  final Map<String, List<Grade>> map = {};

  for (final grade in grades) {
    final key = grade.subject.local_id.isNotEmpty
        ? grade.subject.local_id
        : grade.subject.id.toString();
    map.putIfAbsent(key, () => []).add(grade);
  }

  final List<GradeSubjectData> gradesData = [];

  map.forEach((_, list) {
    final avg = calculateGradeAverageForSubject(
      list,
      useModifier: useModifier,
      useBesteSchuleFormula: useBesteSchuleFormula,
      calculationRule: calculationRules
          ?.firstWhere(
            (rule) =>
                rule.subjectId == list.first.subject.id && rule.rule != null,
            orElse: () => GradeCalculationRule.empty(),
          )
          .rule,
    );
    gradesData.add(
      GradeSubjectData(subject: list.first.subject, grades: list, average: avg),
    );
  });

  // sort by subject name
  gradesData.sort((a, b) => a.subject.name.compareTo(b.subject.name));

  return gradesData;
}

Set<String> extractTypesFromCalculationRule(String? rule) {
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

double calculateGradeAverageForSubject(
  List<Grade> grades, {
  bool useModifier = false,
  bool useBesteSchuleFormula = false,
  String? calculationRule,
}) {
  if (calculationRule != null && useBesteSchuleFormula) {
    // logger.i('Calculating grade average with rule: $calculationRule');
    final types = extractTypesFromCalculationRule(calculationRule);

    final Map<String, double> typeSums = {};
    final Map<String, int> typeCounts = {};

    for (final type in types) {
      final matching = grades
          .where((g) => g.type.toLowerCase() == type.toLowerCase())
          .toList();

      final sum = matching.fold<double>(
        0,
        (p, e) => p + (useModifier ? e.valueWithModifiers : e.value),
      );

      typeSums[type] = sum;
      typeCounts[type] = matching.length;
    }

    // replace placeholders in the calculation rule
    String rule = calculationRule;

    typeSums.forEach((type, sum) {
      rule = rule.replaceAll('${type}_sum', sum.toString());
    });

    typeCounts.forEach((type, count) {
      rule = rule.replaceAll('${type}_count', count.toString());
    });

    // evaluate the grade
    try {
      GrammarParser parser = GrammarParser();
      RealEvaluator realEvaluator = RealEvaluator();
      Expression expr = parser.parse(rule);
      double result = realEvaluator.evaluate(expr).toDouble();
      return result;
    } catch (e) {
      logger.e('Error evaluating calculation rule: $e');
      return calculateSimpleGradeAverage(grades, useModifier: useModifier);
    }
  } else {
    return calculateSimpleGradeAverage(grades, useModifier: useModifier);
  }
}

double calculateSimpleGradeAverage(
  List<Grade> grades, {
  bool useModifier = false,
}) {
  final valid = grades
      .where((g) => (useModifier ? g.valueWithModifiers : g.value) >= 0)
      .toList();
  if (valid.isEmpty) return -1;

  final sum = valid.fold<double>(
    0,
    (p, e) => p + (useModifier ? e.valueWithModifiers : e.value),
  );
  return sum / valid.length;
}

Color getColorForGrade(double grade) {
  final ThemeMode mode = sl<SettingsRepository>().brightness.getValue();

  final Brightness resolvedBrightness = mode == ThemeMode.system
      ? WidgetsBinding.instance.platformDispatcher.platformBrightness
      : (mode == ThemeMode.dark ? Brightness.dark : Brightness.light);

  Color decentColor = resolvedBrightness == Brightness.light
      ? decentGradeBadgeColorLight
      : decentGradeBadgeColor;

  if (grade < 0) {
    return invalidGradeBadgeColor;
  } else if (grade <= 2.5) {
    return goodGradeBadgeColor;
  } else if (grade <= 3.5) {
    return decentColor;
  } else if (grade <= 4.5) {
    return mediumGradeBadgeColor;
  } else {
    return badGradeBadgeColor;
  }
}
