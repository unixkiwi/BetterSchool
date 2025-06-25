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
                  AspectRatio(
                    aspectRatio: 1.7,
                    child: GradesCountAnimatedChart(grades: grades),
                  ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

// Animated chart widget
class GradesCountAnimatedChart extends StatefulWidget {
  final List<Grade> grades;
  const GradesCountAnimatedChart({Key? key, required this.grades})
    : super(key: key);

  @override
  State<GradesCountAnimatedChart> createState() =>
      _GradesCountAnimatedChartState();
}

class _GradesCountAnimatedChartState extends State<GradesCountAnimatedChart> {
  bool animate = false;

  @override
  void initState() {
    super.initState();

    // trigger animation after build
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) setState(() => animate = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final grades = widget.grades;
    final barGroups = GradesChartsUtils.getGradesCountBarGroupData(
      grades,
      context,
    );

    // animate from 0 to actual value,
    // if not from 0 to actual you can't see an animation
    final animatedBarGroups = animate
        ? barGroups
        : barGroups
              .map(
                (group) => BarChartGroupData(
                  x: group.x,
                  barRods: group.barRods
                      .map(
                        (rod) => BarChartRodData(
                          toY: 0,
                          color: rod.color,
                          width: rod.width,
                          borderRadius: rod.borderRadius,
                        ),
                      )
                      .toList(),
                ),
              )
              .toList();

    return BarChart(
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
                  // use real value for tooltip instead of ugly double caused by the animation
                  final realValue = barGroups[groupIndex].barRods[rodIndex].toY;
                  return BarTooltipItem(
                    realValue.toInt().toString(),
                    TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              getTitlesWidget: (value, meta) {
                var titles = GradesChartsUtils.getTitles(grades);
                String text = "";
                int idx = value.toInt();
                if (idx >= 0 && idx < titles.length) {
                  text = titles[idx] ?? '';
                } else {
                  text = '';
                }
                return SideTitleWidget(
                  meta: meta,
                  space: 4,
                  child: Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                );
              },
            ),
          ),
          leftTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(show: false),
        barGroups: animatedBarGroups,
        gridData: const FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: GradesChartsUtils.getMaxY(grades).toDouble(),
      ),
      duration: const Duration(milliseconds: 1200),
      curve: Curves.easeOutQuart,
    );
  }
}
