import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/utils/grades_charts_utils.dart';

Future<void> showGradesCountChartBottomSheet(
  BuildContext context,
  List<Grade> grades,
) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        ),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(), // Prevents drag conflict
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Handle for the bottom sheet
                Center(
                  child: Container(
                    height: 4,
                    width: 100,
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                if (grades.isEmpty)
                  const Center(child: Text('No data to display'))
                else
                  SizedBox(
                    height: 250,
                    child: BarChart(
                      BarChartData(
                        barTouchData: BarTouchData(
                          enabled: false,
                          touchTooltipData: BarTouchTooltipData(
                            getTooltipColor: (group) => Colors.transparent,
                            tooltipPadding: EdgeInsets.zero,
                            tooltipMargin: 8,
                            getTooltipItem:
                                (
                                  BarChartGroupData group,
                                  int groupIndex,
                                  BarChartRodData rod,
                                  int rodIndex,
                                ) {
                                  return BarTooltipItem(
                                    rod.toY.toString(),
                                    TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondaryContainer,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                },
                          ),
                        ),
                        titlesData: titlesData,
                        borderData: FlBorderData(show: false),
                        barGroups:
                            GradesChartsUtils.getGradesCountBarGroupData(
                              grades,
                              context,
                            ),
                        gridData: const FlGridData(show: false),
                        alignment: BarChartAlignment.spaceAround,
                        maxY: GradesChartsUtils.getMaxY(grades).toDouble(),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget getTitles(double value, TitleMeta meta) {
  final style = TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
  String text;
  switch (value.toInt()) {
    case 0:
      text = '1';
      break;
    case 1:
      text = '2';
      break;
    case 2:
      text = '3';
      break;
    case 3:
      text = '4';
      break;
    case 4:
      text = '5';
      break;
    case 5:
      text = '6';
      break;
    default:
      text = '';
      break;
  }
  return SideTitleWidget(
    meta: meta,
    space: 4,
    child: Text(text, style: style),
  );
}

FlTitlesData get titlesData => FlTitlesData(
  show: true,
  bottomTitles: AxisTitles(
    sideTitles: SideTitles(
      showTitles: true,
      reservedSize: 30,
      getTitlesWidget: getTitles,
    ),
  ),
  leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
);
