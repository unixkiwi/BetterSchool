import 'package:betterschool/ui/core/widgets/loading.dart';
import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimetableBloc, TimetableState>(
      builder: (context, state) {
        if (state is TimetableStateTest) {
          return ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  state.tasks[index].lessons!.first.subject!.name ?? "No title",
                ),
              );
            },
          );
        }

        return LoadingSpinner();
      },
    );
  }
}
