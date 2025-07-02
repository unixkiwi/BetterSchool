import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';
import 'package:week_of_year/date_week_extensions.dart';

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

  return "$prefix, ${DateFormat('d MMMM y').format(date)} (NR. ${date.weekOfYear})";
}

class DateInfoTileAppBar extends StatelessWidget {
  final TimetablePageViewmodel viewModel;

  const DateInfoTileAppBar({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        DateTime? date = await showDatePicker(
          context: context,
          currentDate: viewModel.currentSchoolDay?.date ?? DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2050),
        );

        if (date != null) {
          logger.i(
            "[DateTime Picker TimeTable] Loading Day: ${date.year}/${date.month}/${date.day}",
          );
          await viewModel.loadDay(date);
        }
      },
      child: Container(
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
      ),
    );
  }
}
