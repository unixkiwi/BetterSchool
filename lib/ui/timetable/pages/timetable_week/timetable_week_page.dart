import 'package:betterschool/domain/models/schoolday.dart';
import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:betterschool/ui/timetable/pages/timetable_error_page.dart';
import 'package:betterschool/ui/timetable/pages/timetable_loading_page.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/timetable_datebar.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/timetable_day_page.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimetableWeekPage extends StatefulWidget {
  final WeekString weekNr;
  final List<SchoolDay> days;

  const TimetableWeekPage({
    super.key,
    required this.weekNr,
    required this.days,
  });

  @override
  State<TimetableWeekPage> createState() => _TimetableWeekPageState();
}

class _TimetableWeekPageState extends State<TimetableWeekPage> {
  final PageController _controller = PageController(initialPage: 1);
  int _currentPage = 1; // Start at page 1 (first actual day)

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final blocState = context.read<TimetableBloc>().state;

      if (blocState is TimetableWeekState && blocState.moveTo != null) {
        logger.d(
          "[Timetable] Made initially jump to page: ${blocState.moveTo}",
        );

        _controller.jumpToPage(blocState.moveTo!);
        if (blocState.moveTo != 0) _currentPage = blocState.moveTo!;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _getPages(List<SchoolDay> days, WeekString weekNr) {
    List<Widget> result = [];

    // add first loading page
    result.add(TimetableLoadingPage());

    // add pages for weeks
    for (final SchoolDay day in days) {
      result.add(TimetableDayPage(day: day));
    }

    // add last loading page
    result.add(TimetableLoadingPage());

    return result;
  }

  SchoolDay? _getCurrentDay() {
    if (_currentPage > 0 && _currentPage <= widget.days.length) {
      return widget.days[_currentPage - 1];
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = _getPages(widget.days, widget.weekNr);

    return BlocListener<TimetableBloc, TimetableState>(
      listener: (context, state) {
        // reset page so it doesn't stay at loading page
        if (state is TimetableWeekState) {
          logger.d("[Timetable] Jumped to page ${state.moveTo}");
          final targetPage = state.moveTo ?? 1;
          _controller.jumpToPage(targetPage);
          setState(() {
            _currentPage = targetPage;
          });
        }
      },
      child: Scaffold(
        appBar: TimetableDatebar(currentDay: _getCurrentDay()),
        body: PageView.builder(
          controller: _controller,
          itemCount: pages.length,
          itemBuilder: (context, index) => index < pages.length && index >= 0
              ? pages[index]
              : TimetableErrorPage(
                  title: "Oooops, it seems like we couldn't find your page",
                  description:
                      "The requested page could not be found and was out of range.",
                  errorType: TimetableError.other,
                ),
          onPageChanged: (page) {
            context.read<TimetableBloc>().add(
              TimetablePageSwitchEvent(
                page: page,
                isLastPage: page == pages.length - 1,
                weekString: widget.weekNr,
              ),
            );

            setState(() {
              _currentPage = page;
            });
          },
        ),
      ),
    );
  }
}
