import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:school_app/domain/models/interval.dart';
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

  double getBestMaxY(Map<SchoolYear, Map<SchoolInterval, double>> data) {
    double max = 0;

    for (double value in data.values.expand((innerMap) => innerMap.values)) {
      if (value > max) max = value;
    }

    double result =
        max +
        maxDifference(
          data.values.expand((innerMap) => innerMap.values).toList(),
        );

    return result > 6 || result.isInfinite
        ? 6
        : (max +
              maxDifference(
                data.values.expand((innerMap) => innerMap.values).toList(),
              ));
  }

  double getBestMinY(Map<SchoolYear, Map<SchoolInterval, double>> data) {
    double smallest = double.infinity;

    for (double value in data.values.expand((innerMap) => innerMap.values)) {
      if (value < smallest) smallest = value;
    }

    if (smallest.isInfinite) return 0;

    return smallest -
                maxDifference(
                  data.values.expand((innerMap) => innerMap.values).toList(),
                ) <
            0
        ? 0
        : smallest -
              maxDifference(
                data.values.expand((innerMap) => innerMap.values).toList(),
              );
  }

  double getExtraLineHeight(Map<SchoolYear, Map<SchoolInterval, double>> data) {
    double sum = data.entries.fold<double>(
      0,
      (double sum, year) =>
          sum += year.value.entries.fold(0, (sum, entry) => sum += entry.value),
    );

    int years = data.entries.fold(0, (sum, year) => sum += year.value.length);

    if (data.isNotEmpty && years != 0)
      return sum / data.length;
    else
      return -1;
  }

  String getYearTitle(SchoolYear year) {
    String first = year.from.year.toString();
    String second = year.to.year.toString();

    return "${first.substring(2, 4)}/${second.substring(2, 4)}";
  }

  List<FlSpot> getSpots(Map<SchoolYear, Map<SchoolInterval, double>> data) {
    List<FlSpot> spots = [];

    List<SchoolInterval> years = getYears(data);

    for (MapEntry<SchoolYear, Map<SchoolInterval, double>> entry
        in data.entries) {
      for (MapEntry<SchoolInterval, double> interval in entry.value.entries) {
        spots.add(
          FlSpot(years.indexOf(interval.key).toDouble(), interval.value),
        );
      }
    }

    return spots;
  }

  List<SchoolInterval> getYears(
    Map<SchoolYear, Map<SchoolInterval, double>> data,
  ) {
    List<SchoolInterval> years = [];

    for (MapEntry<SchoolYear, Map<SchoolInterval, double>> entry
        in data.entries) {
      for (MapEntry<SchoolInterval, double> interval in entry.value.entries) {
        years.contains(interval.key) ? null : years.add(interval.key);
      }
    }

    return years;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: viewModel.getYearsAvg(),
      builder: (context, snap) {
        if (snap.hasData && snap.data != null && snap.data!.isNotEmpty) {
          Map<SchoolYear, Map<SchoolInterval, double>> data = Map.fromEntries(
            snap.data!.entries.toList()
              ..sort((a, b) => a.key.from.compareTo(b.key.from)),
          );

          if (data.isEmpty) logger.e("[YearsAvgLineChart] Data is empty");

          double maxY = getBestMaxY(data);
          double minY = getBestMinY(data);

          double heightSum = maxY + minY;

          return LineChart(
            LineChartData(
              minY: minY,
              maxY: maxY,
              lineBarsData: [
                LineChartBarData(
                  spots: getSpots(data)
                      .map(
                        (FlSpot spot) =>
                            FlSpot(spot.x, roundNice(heightSum - spot.y)),
                      )
                      .toList(),
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
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 36,
                    getTitlesWidget: (double y, TitleMeta meta) =>
                        y == maxY || y == minY
                        ? Container()
                        : Transform.rotate(
                            angle: 0, //-1.57,
                            child: Text((heightSum - y).toStringAsFixed(2)),
                          ),
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1.0,
                    getTitlesWidget: (double index, TitleMeta titleMeta) =>
                        index % 2 == 0
                        ? Container()
                        : Text(
                            index < getYears(data).length && index >= 0
                                ? getYearTitle(
                                    data.entries
                                        .toList()[(index / 2).toInt()]
                                        .key,
                                  )
                                : index.toString(),
                          ),
                  ),
                ),
              ),
              extraLinesData: getExtraLineHeight(data) > 0
                  ? ExtraLinesData(
                      horizontalLines: [
                        HorizontalLine(
                          y: roundNice(heightSum - getExtraLineHeight(data)),
                          label: HorizontalLineLabel(
                            show: true,
                            labelResolver: (line) => "Avg: ${line.y}",
                          ),
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
