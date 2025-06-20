import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';

class TimetableDateInfoBar extends StatelessWidget {
  final SchoolDay? day;
  final TimetablePageViewmodel viewModel;

  const TimetableDateInfoBar({
    super.key,
    required this.day,
    required this.viewModel,
  });

  String getDateText() {
    if (day == null) return "No date for this day.";

    DateTime date = day!.date;
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

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surfaceContainer,
      elevation: 1,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  getDateText(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                iconSize: 24,
                icon: const Icon(Icons.today),
                tooltip: "Go to Today",
                onPressed: () => viewModel.loadCurrentDay(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
