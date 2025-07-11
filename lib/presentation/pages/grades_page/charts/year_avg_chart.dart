import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:school_app/domain/models/school_year.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';
import 'package:school_app/utils/math_utils.dart';

class YearsAvgLineChart extends StatelessWidget {
  final GradesPageViewmodel viewModel;

  const YearsAvgLineChart({super.key, required this.viewModel});

  List<FlSpot> getSpots(Map<SchoolYear, double> data) {
    List<FlSpot> spots = [];

    List<SchoolYear> years = [];

    for (MapEntry<SchoolYear, double> entry in data.entries) {
      years.contains(entry.key) ? 0 : years.add(entry.key);
    }

    for (MapEntry<SchoolYear, double> entry in data.entries) {
      spots.add(FlSpot(years.indexOf(entry.key) + 1.0, roundNice(entry.value)));
    }

    return spots;
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
              minY: 1,
              lineBarsData: [
                LineChartBarData(
                  spots: getSpots(data),
                  isCurved: true,
                  color: Theme.of(context).colorScheme.primary,
                  dotData: FlDotData(show: true),
                ),
              ],
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
