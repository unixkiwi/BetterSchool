import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

    return Scaffold(
      appBar: AppBar(title: Text("Grades"), elevation: 1),
      body: Consumer<GradesPageViewmodel>(
        builder: (context, viewModel, child) {
          return viewModel.isLoading && !viewModel.dataFetched
              ? Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                onRefresh: () async {
                  logger.i("[Grades Page] Refetching Data");
                  await viewModel.fetchData();
                  logger.i("[Grades Page] Refetched Data");
                },
                child: ListView(
                  children: [
                    Column(
                      children: [
                        for (final entry in viewModel.averages.entries)
                          Card(
                            child: ListTile(
                              title: Text(entry.key.shortName),
                              trailing:
                                  entry.value == -1
                                      ? Icon(Icons.block)
                                      : Text(
                                        entry.value.toStringAsFixed(2),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                        ),
                                      ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              );
        },
      ),
    );
  }
}
