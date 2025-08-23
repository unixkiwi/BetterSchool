import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:betterschool/ui/timetable/pages/timetable_empty_page.dart';
import 'package:betterschool/ui/timetable/pages/timetable_error_page.dart';
import 'package:betterschool/ui/timetable/pages/timetable_loading_page.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/timetable_week_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimetableBloc, TimetableState>(
      builder: (context, state) {
        switch (state) {
          case TimetableWeekState():
            return TimetableWeekPage(weekNr: state.weekNr, days: state.days);
          case TimetableStateLoading():
            return TimetableLoadingPage();
          case TimetableErrorState():
            return TimetableErrorPage(title: state.title, description: state.description, errorType: state.errorType);
          case TimetableEmptyState():
            return TimetableEmptyPage();
          default:
            return TimetableLoadingPage();
        }
      },
    );
  }
}
