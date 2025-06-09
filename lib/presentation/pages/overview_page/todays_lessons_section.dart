import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/pages/overview_page/lessons_section_lesson_tile.dart';
import 'package:school_app/presentation/viewmodels/overview_page_viewmodel.dart';

class TodaysLessonsSection extends StatelessWidget {
  const TodaysLessonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OverviewPageViewmodel>(
      builder: (context, viewModel, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // heading for this section
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 8.0,
              ),
              child: Text(
                "Today's lessons",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // horizontal list of lessons of the day
            viewModel.isLoading && !viewModel.dataFetched
            ? Center(child: CircularProgressIndicator())
            : SizedBox(
              height: 50,
              child: viewModel.lessons.isNotEmpty 
              ? Row(
                children: [
                  for (int index = 0; index < viewModel.lessons.length; index++)
                    Expanded(
                      child: LessonTile(index: index, viewModel: viewModel),
                    ),
                ],
              )
              : Text("No lessons for today.")
            ),
          ],
        );
      },
    );
  }
}
