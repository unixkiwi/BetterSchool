import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:school_app/domain/models/grade.dart';

class GradesChartsUtils {
  static List<String> getTitles(List<Grade> grades) {
    List<String> sortedGrades = [];

    for (int gradeValue = 1; gradeValue <= 6; gradeValue++) {
      List<Grade> gradesWithValue = grades
          .where((grade) => grade.plainValue == gradeValue)
          .toList();

      if (gradesWithValue.isEmpty) continue;

      double percentCount = gradesWithValue.length / grades.length;

      sortedGrades.add("${gradeValue.toString()}:(${(percentCount*100).round()}%)");
    }

    return sortedGrades;
  }

  static int getMaxY(List<Grade> grades) {
    int maxY = 0;

    for (int gradeValue = 1; gradeValue <= 6; gradeValue++) {
      List<Grade> gradesWithValue = grades
          .where((grade) => grade.plainValue == gradeValue)
          .toList();

      if (gradesWithValue.length > maxY) maxY = gradesWithValue.length;
    }

    return maxY + (10 - (maxY % 10));
  }

  static List<BarChartGroupData> getGradesCountBarGroupData(
    List<Grade> grades,
    BuildContext context,
  ) {
    grades.sort((a, b) => a.plainValue.compareTo(b.plainValue));

    List<BarChartGroupData> barChartGroupData = [];

    List<int> givenGradeValues = [];

    for (int gradeValue = 1; gradeValue <= 6; gradeValue++) {
      List<Grade> gradesWithValue = grades
          .where((grade) => grade.plainValue == gradeValue)
          .toList();

      if (gradesWithValue.isEmpty) continue;

      givenGradeValues.add(gradeValue);

      barChartGroupData.add(
        BarChartGroupData(
          x: givenGradeValues.indexOf(gradeValue),
          showingTooltipIndicators: [0],
          barRods: [
            BarChartRodData(
              toY: gradesWithValue.length.toDouble(),
              width: 25,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              borderRadius: BorderRadius.circular(5),
            ),
          ],
        ),
      );
    }

    return barChartGroupData;
  }
}
