import 'package:betterschool/ui/core/widgets/loading.dart';
import 'package:betterschool/ui/grades/bloc/grades_bloc.dart';
import 'package:betterschool/ui/grades/pages/grades_empty_page.dart';
import 'package:betterschool/ui/grades/pages/grades_error_page.dart';
import 'package:betterschool/ui/grades/pages/grades_list_page.dart';
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
            return GradesListPage(grades: state.grades);
          case GradesStateLoading():
            return Center(child: LoadingSpinner());
          case GradesErrorState():
            return GradesErrorPage(
              title: state.title,
              description: state.description,
              errorType: state.errorType,
            );
          case GradesEmptyState():
            return GradesEmptyPage();
        }
      },
    );
  }
}
