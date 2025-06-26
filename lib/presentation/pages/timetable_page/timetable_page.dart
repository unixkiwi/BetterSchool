import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/models/day.dart';
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
            weekNr: DateTime.now().weekday > 5
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
          appBar: AppBar(
            title: Text("Timetable"),
            actions: [DateInfoTileAppBar(viewModel: viewModel)],
            actionsPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            elevation: 1,
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.today_rounded),
            onPressed: () {
              viewModel.loadCurrentDay();
            },
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // date info bar
              /*TimetableDateInfoBar(
                day: viewModel.currentSchoolDay,
                viewModel: viewModel,
              ),*/
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

String getDateText(SchoolDay? day) {
  if (day == null) return "No date for this day.";

  DateTime date = day.date;
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);
  DateTime target = DateTime(date.year, date.month, date.day);

  String prefix;
  if (target == today) {
    prefix = "Today";
  } else if (target == today.subtract(const Duration(days: 1))) {
    prefix = "Yesterday";
  } else if (target == today.add(const Duration(days: 1))) {
    prefix = "Tomorrow";
  } else {
    prefix = DateFormat('EEEE').format(date);
  }

  return "$prefix, ${DateFormat('d MMMM y').format(date)}";
}

class DateInfoTileAppBar extends StatelessWidget {
  final TimetablePageViewmodel viewModel;

  const DateInfoTileAppBar({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.surfaceContainer,
        border: BoxBorder.all(
          width: 1,
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
      child: Text(getDateText(viewModel.currentSchoolDay)),
    );
  }
}
