import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/pages/timetable_page/timetable_list/timetable_date_info_bar.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';
import 'package:school_app/utils/time_utils.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TimetablePageViewmodel>(
      builder: (context, viewModel, child) {
        // fetch data just when not already existing
        if (!viewModel.dataFetched && !viewModel.isLoading) {
          viewModel.fetchData(
            weekNr:
                DateTime.now().weekday > 5
                    ? DateTime.now().weekOfYear + 1
                    : DateTime.now().weekOfYear,
          );
        }

        // loading page whenever no data is existing
        if (viewModel.isLoading &&
            !viewModel.dataFetched &&
            viewModel.pages.isEmpty) {
          return Scaffold(
            appBar: AppBar(title: Text("Timetable")),
            body: Center(child: CircularProgressIndicator()),
          );
        }

        return Scaffold(
          appBar: AppBar(title: Text("Timetable"), elevation: 1),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // date info bar
              TimetableDateInfoBar(day: viewModel.currentSchoolDay),
              // main timetable content
              Expanded(
                child: PageView.builder(
                  controller: viewModel.controller,
                  pageSnapping: true,
                  physics: PageScrollPhysics(),
                  itemCount: viewModel.pages.length,
                  onPageChanged: (index) async {
                    await viewModel.onPageChange(index);
                  },
                  itemBuilder: (context, index) {
                    return viewModel.pages[index];
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
