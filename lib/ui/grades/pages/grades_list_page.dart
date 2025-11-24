import 'dart:async';

import 'package:betterschool/domain/models/grade.dart';
import 'package:betterschool/ui/grades/bloc/grades_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GradesListPage extends StatelessWidget {
  final List<Grade> grades;

  const GradesListPage({super.key, required this.grades});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        final completer = Completer<void>();

        context.read<GradesBloc>().add(
          GradesPageRefreshedEvent(completer: completer),
        );

        try {
          await completer.future.timeout(const Duration(seconds: 30));
        } catch (_) {}
      },
      child: ListView.builder(
        itemCount: grades.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(grades[index].title),
          trailing: Text(grades[index].valueString),
          subtitle: Text(grades[index].type),
        ),
      ),
    );
  }
}
