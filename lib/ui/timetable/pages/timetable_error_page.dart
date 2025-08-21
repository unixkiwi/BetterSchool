import 'package:betterschool/config/constants.dart';
import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:flutter/material.dart';
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
      child: SingleChildScrollView(
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
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
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
