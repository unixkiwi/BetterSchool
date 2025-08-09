import 'package:flutter/material.dart';
import 'package:school_app/presentation/pages/grades_page/charts/year_avg_chart.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';

class AnalyticsChartsPage extends StatelessWidget {
  final GradesPageViewmodel viewModel;

  const AnalyticsChartsPage({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [YearsAvgLineChart(viewModel: viewModel)]);
  }
}
