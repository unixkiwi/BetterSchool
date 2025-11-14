import 'dart:async';

import 'package:betterschool/config/constants.dart';
import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimetableErrorPage extends StatelessWidget {
  final String title;
  final String description;
  final TimetableError errorType;

  const TimetableErrorPage({
    super.key,
    required this.title,
    required this.description,
    required this.errorType,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshIndicator(
        onRefresh: () async {
          final completer = Completer<void>();

          context.read<TimetableBloc>().add(
            TimetableRefreshEvent(
              weekString: WeekString.fromDate(DateTime.now()),
              completer: completer,
            ),
          );

          try {
            await completer.future.timeout(const Duration(seconds: 30));
          } catch (_) {}
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          // allow pull-to-refresh even when content is short
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: SvgPicture.asset(
                  _getSvgPath(errorType),
                  width: MediaQuery.of(context).size.width * 3 / 5,
                  fit: BoxFit.contain,
                ),
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getSvgPath(TimetableError error) {
    switch (error) {
      case TimetableError.noConnection:
        return noInternetSvg;
      case TimetableError.forbidden:
        return forbiddenSvg;
      default:
        return serverErrorSvg;
    }
  }
}
