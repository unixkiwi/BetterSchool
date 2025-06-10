import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/presentation/viewmodels/overview_page_viewmodel.dart';

class LessonTile extends StatelessWidget {
  final int index;
  final OverviewPageViewmodel viewModel;
  late Lesson _lesson;

  LessonTile({super.key, required this.index, required this.viewModel});

  Color getColor(Lesson lesson, BuildContext ctx) {
    switch (lesson.status) {
      case LessonStatus.CANCELLED:
        return Theme.of(ctx).colorScheme.errorContainer;
      case LessonStatus.PLANNED:
          return Theme.of(ctx).colorScheme.primaryContainer;
      default:
        return Theme.of(ctx).colorScheme.secondaryContainer;
    }
  }

  @override
  Widget build(BuildContext context) {
    _lesson = viewModel.lessons![index];

    return InkWell(
      onTap: () {
        // TODO: Add lesson tile onPress logic
      },
      //IDEA: show teacher and room
      borderRadius: BorderRadius.circular(7),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: getColor(_lesson, context),
          borderRadius: BorderRadius.circular(7),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            _lesson.subject.shortName,
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
        ),
      ),
    );
  }
}
