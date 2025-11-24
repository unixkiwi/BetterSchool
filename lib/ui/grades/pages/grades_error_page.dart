import 'dart:async';

import 'package:betterschool/config/constants.dart';
import 'package:betterschool/ui/grades/bloc/grades_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GradesErrorPage extends StatelessWidget {
  final String title;
  final String description;
  final GradesError errorType;

  const GradesErrorPage({
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

          context.read<GradesBloc>().add(
            GradesPageRefreshedEvent(completer: completer),
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

  String _getSvgPath(GradesError error) {
    switch (error) {
      case GradesError.noConnection:
        return noInternetSvg;
      case GradesError.forbidden:
        return forbiddenSvg;
      default:
        return serverErrorSvg;
    }
  }
}
