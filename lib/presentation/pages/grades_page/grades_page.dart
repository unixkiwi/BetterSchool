import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';

class GradesPage extends StatefulWidget {
  const GradesPage({super.key});

  @override
  State<GradesPage> createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  @override
  void initState() {
    log("[UI] Called initState from grades page.");

    super.initState();
    // trigger fetch when page was opened
    WidgetsBinding.instance.addPostFrameCallback((_) {
      log("[Grades Page] Fetching grades...");
      context.read<GradesPageViewmodel>().fetchData();
      log("[Grades Page] Done fetching grades.");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grades"), elevation: 1),
      body: Consumer<GradesPageViewmodel>(
        builder: (context, viewModel, child) {
          return ListView(
            children: [
              // heading for this section
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 8.0,
                ),
                child: Text(
                  "Grades",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              viewModel.isLoading && !viewModel.dataFetched
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                    children: [
                      for (final entry in viewModel.averages.entries)
                        ListTile(
                          title: Text(entry.key.shortName),
                          trailing: Text(
                            entry.value.toStringAsFixed(2),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                    ],
                  ),
            ],
          );
        },
      ),
    );
  }
}
