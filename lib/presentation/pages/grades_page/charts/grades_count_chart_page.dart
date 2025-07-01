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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
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
                Flexible(
                  child: FractionallySizedBox(
                    heightFactor: 0.45,
                    child: GradesCountAnimatedChart(grades: grades),
                  ),
                ),
            ],
          ),
        ),
      );
    },
  );
}

// Animated chart widget
class GradesCountAnimatedChart extends StatefulWidget {
  final List<Grade> grades;
  const GradesCountAnimatedChart({super.key, required this.grades});

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
              reservedSize: 40, // Increased from 24 to 40 for more space
              getTitlesWidget: (value, meta) {
                var titles = GradesChartsUtils.getTitles(grades);
                int idx = value.toInt();
                String gradeText = "";
                String percentText = "";

                if (idx >= 0 && idx < titles.length) {
                  final parts = titles[idx].split(':');
                  gradeText = parts[0];
                  percentText = parts.length > 1 ? parts[1] : '';
                }

                return SideTitleWidget(
                  meta: meta,
                  space: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        gradeText,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(
                                context,
                              ).textTheme.labelLarge?.fontSize ??
                              14,
                        ),
                      ),
                      if (percentText.isNotEmpty)
                        Text(
                          percentText,
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize:
                                    Theme.of(
                                      context,
                                    ).textTheme.labelMedium?.fontSize ??
                                    12,
                              ),
                        ),
                    ],
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
