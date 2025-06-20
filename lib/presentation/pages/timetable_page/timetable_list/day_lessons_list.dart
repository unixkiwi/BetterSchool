import 'package:flutter/material.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';

class DayLessonsList extends StatelessWidget {
  final TimetablePageViewmodel viewmodel;
  final Widget child;

  const DayLessonsList({
    super.key,
    required this.viewmodel,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await viewmodel.fetchData(force: true);
        SnackBar refreshMsg = SnackBar(content: Text('Updated timetable!'));
        ScaffoldMessenger.of(context).showSnackBar(refreshMsg);
      },
      child: child
    );
  }
}
