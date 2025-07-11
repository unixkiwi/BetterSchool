import 'package:flutter/widgets.dart';
import 'package:school_app/presentation/pages/grades_page/charts/year_avg_chart.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';

class AnalyticsChartsPage extends StatelessWidget {
  final GradesPageViewmodel viewModel;

  const AnalyticsChartsPage({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.45,
      child: YearsAvgLineChart(viewModel: viewModel),
    );
  }
}
