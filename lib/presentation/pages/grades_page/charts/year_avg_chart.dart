import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:school_app/domain/models/school_year.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';
import 'package:school_app/utils/math_utils.dart';

class YearsAvgLineChart extends StatelessWidget {
  final GradesPageViewmodel viewModel;

  const YearsAvgLineChart({super.key, required this.viewModel});

  double maxDifference(List<double> values) {
    double minValue = double.infinity;
    double maxValue = 0;
    for (double value in values) {
      if (value < minValue) minValue = value;
      if (value > maxValue) maxValue = value;
    }
    return maxValue - minValue;
  }

  double getBestMaxY(Map<SchoolYear, double> data) {
    double max = 0;

    for (double value in data.values) {
      if (value > max) max = value;
    }

    return (max + maxDifference(data.values.toList())) > 6
        ? 6
        : (max + maxDifference(data.values.toList()));
  }

  double getBestMinY(Map<SchoolYear, double> data) {
    double smallest = double.infinity;

    for (double value in data.values) {
      if (value < smallest) smallest = value;
    }

    return smallest - maxDifference(data.values.toList()) < 0
        ? 0
        : smallest - maxDifference(data.values.toList());
  }

  double getExtraLineHeight(Map<SchoolYear, double> data) {
    double sum = data.entries.fold<double>(
      0,
      (double sum, year) => sum += year.value,
    );

    if (data.isNotEmpty)
      return sum / data.length;
    else
      return -1;
  }

  String getYearTitle(SchoolYear year) {
    String first = year.from.year.toString();
    String second = year.to.year.toString();

    return "${first.substring(2, 4)}/${second.substring(2, 4)}";
  }

  List<FlSpot> getSpots(Map<SchoolYear, double> data) {
    List<FlSpot> spots = [];

    List<SchoolYear> years = [];

    for (MapEntry<SchoolYear, double> entry in data.entries) {
      years.contains(entry.key) ? 0 : years.add(entry.key);
    }

    for (MapEntry<SchoolYear, double> entry in data.entries) {
      spots.add(
        FlSpot(years.indexOf(entry.key).toDouble(), roundNice(entry.value)),
      );
    }

    return spots;
  }

  List<SchoolYear> getYears(Map<SchoolYear, double> data) {
    List<SchoolYear> years = [];

    for (MapEntry<SchoolYear, double> entry in data.entries) {
      years.contains(entry.key) ? 0 : years.add(entry.key);
    }

    return years;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: viewModel.getYearsAvg(),
      builder: (context, snap) {
        if (snap.hasData && snap.data != null && snap.data!.isNotEmpty) {
          Map<SchoolYear, double> data = Map.fromEntries(
            snap.data!.entries.toList()
              ..sort((a, b) => a.key.from.compareTo(b.key.from)),
          );

          if (data.isEmpty) logger.e("[YearsAvgLineChart] Data is empty");

          return LineChart(
            LineChartData(
              minY: getBestMinY(data),
              maxY: getBestMaxY(data),
              lineBarsData: [
                LineChartBarData(
                  spots: getSpots(data),
                  isCurved: false,
                  color: Theme.of(context).colorScheme.primary,
                  dotData: FlDotData(
                    show: true,
                    getDotPainter:
                        (
                          FlSpot spot,
                          double xPercentage,
                          LineChartBarData bar,
                          int index, {
                          double? size,
                        }) {
                          return FlDotCirclePainter(
                            radius: 6,
                            color: Theme.of(context).colorScheme.primary,
                          );
                        },
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).colorScheme.primary.withAlpha(75),
                        Theme.of(context).colorScheme.primary.withAlpha(35),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
              titlesData: FlTitlesData(
                show: true,
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: true, interval: 0.25),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: (double index, TitleMeta titleMeta) =>
                        Text(
                          index.toInt() < getYears(data).length &&
                                  index.toInt() >= 0
                              ? getYearTitle(getYears(data)[index.toInt()])
                              : index.toInt().toString(),
                        ),
                  ),
                ),
              ),
              extraLinesData: getExtraLineHeight(data) > 0
                  ? ExtraLinesData(
                      horizontalLines: [
                        HorizontalLine(
                          y: getExtraLineHeight(data),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ],
                    )
                  : null,
              lineTouchData: LineTouchData(touchSpotThreshold: 45),
              gridData: FlGridData(drawVerticalLine: false),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
