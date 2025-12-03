import 'package:betterschool/config/di.dart';
import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:betterschool/domain/models/grade.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/ui/core/themes/grades_page_colors.dart';
import 'package:flutter/material.dart';

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

List<GradeSubjectData> groupGradesBySubject(List<Grade> grades) {
  final Map<String, List<Grade>> map = {};

  for (final grade in grades) {
    final key = grade.subject.local_id.isNotEmpty
        ? grade.subject.local_id
        : grade.subject.id.toString();
    map.putIfAbsent(key, () => []).add(grade);
  }

  final List<GradeSubjectData> gradesData = [];

  map.forEach((_, list) {
    final avg = _calculateGradesAverage(list);
    gradesData.add(
      GradeSubjectData(subject: list.first.subject, grades: list, average: avg),
    );
  });

  // sort by subject name
  gradesData.sort((a, b) => a.subject.name.compareTo(b.subject.name));

  return gradesData;
}

double _calculateGradesAverage(List<Grade> grades, {bool useModifier = false}) {
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
