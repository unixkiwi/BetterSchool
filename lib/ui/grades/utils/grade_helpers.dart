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

MaterialColor getColorForGrade(double grade) {
  switch (grade) {
    case < 0:
      return invalidGradeBadgeColor;
    case <= 2.5:
      return goodGradeBadgeColor;
    case <= 3.5:
      return decentGradeBadgeColor;
    case <= 4.5:
      return mediumGradeBadgeColor;
    default:
      return badGradeBadgeColor;
  }
}
