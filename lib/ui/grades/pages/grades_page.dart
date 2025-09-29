import 'package:betterschool/ui/core/widgets/loading.dart';
import 'package:betterschool/ui/grades/bloc/grades_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GradesPage extends StatelessWidget {
  const GradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GradesBloc, GradesState>(
      builder: (context, state) {
        switch (state) {
          case GradesDataState():
            return ListView.builder(
              itemCount: state.grades.length,
              itemBuilder: (context, index) =>
                  ListTile(title: Text(state.grades[index].title)),
            );
          case GradesStateLoading():
            return Center(child: LoadingSpinner());
          case GradesErrorState():
            return Center(child: Text("error: ${state.description}"));
          case GradesEmptyState():
            return Center(child: Text("Empty"));
        }
      },
    );
  }
}
