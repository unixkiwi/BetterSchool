import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/pages/grades_page/avg_grade_tile.dart';
import 'package:school_app/presentation/pages/grades_page/charts/grades_count_chart_page.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';

class GradesPage extends StatefulWidget {
  const GradesPage({super.key});

  @override
  State<GradesPage> createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  bool _loading = true;

  @override
  void initState() {
    logger.d("[Grades Page] Called initState()");

    super.initState();

    // trigger fetch when page was opened
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      logger.i("[Grades Page] Fetching grades...");
      setState(() => _loading = true);
      await context.read<GradesPageViewmodel>().fetchData();
      logger.i("[Grades Page] Done fetching grades.");
      if (mounted) setState(() => _loading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.d("[Grades Page] Called build() method");

    if (_loading) {
      return Scaffold(
        appBar: AppBar(title: Text("Grades")),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Consumer<GradesPageViewmodel>(
      builder: (context, viewModel, child) {
        double avg = ((viewModel.totalAvg * 100).round() / 100);
        Widget avgDisplay = avg == -1
            ? Icon(Icons.block_rounded)
            : Text("Ø ${avg.toStringAsFixed(2)}");

        return Scaffold(
          appBar: AppBar(
            title: Text("Grades"),
            actions: [
              IconButton(
                icon: Icon(Icons.bar_chart_rounded),
                tooltip: 'Show Grades Chart',
                onPressed: () {
                  showGradesCountChartBottomSheet(context, viewModel.grades);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(child: avgDisplay),
              ),
            ],
            elevation: 1,
          ),
          body: viewModel.isLoading && !viewModel.dataFetched
              ? Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                  onRefresh: () async {
                    logger.i("[Grades Page] Refetching Data");
                    await viewModel.fetchData(force: true);
                    logger.i("[Grades Page] Refetched Data");
                    SnackBar refreshMsg = SnackBar(
                      content: Text('Refreshed grades!'),
                    );
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
                ),
        );
      },
    );
  }
}
