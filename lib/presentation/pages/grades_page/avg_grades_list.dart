import 'package:flutter/material.dart';
import 'package:school_app/presentation/pages/grades_page/avg_grade_tile.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';

class AvgGradesList extends StatelessWidget {
  final GradesPageViewmodel viewModel;

  const AvgGradesList({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        logger.i("[Grades Page] Refetching Data");
        await viewModel.fetchData(force: true);
        logger.i("[Grades Page] Refetched Data");
        SnackBar refreshMsg = SnackBar(content: Text('Refreshed grades!'));
        ScaffoldMessenger.of(context).showSnackBar(refreshMsg);
      },
      child: ListView(
        children: [
          Column(
            children: [
              for (final entry in viewModel.averages.entries)
                Column(
                  children: [
                    AvgGradeTile(
                      subject: entry.key,
                      avgGrade: entry.value,
                      viewModel: viewModel,
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
