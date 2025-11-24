import 'dart:async';

import 'package:betterschool/config/constants.dart';
import 'package:betterschool/ui/grades/bloc/grades_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class GradesEmptyPage extends StatelessWidget {
  const GradesEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Timetable")),
      body: RefreshIndicator(
        onRefresh: () async {
          final completer = Completer<void>();

          context.read<GradesBloc>().add(
            GradesPageRefreshedEvent(completer: completer),
          );

          try {
            await completer.future.timeout(const Duration(seconds: 30));
          } catch (_) {}
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    noDataSvg,
                    width: MediaQuery.of(context).size.width * 3 / 5,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "It seems like you haven't got any grades yet.",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
