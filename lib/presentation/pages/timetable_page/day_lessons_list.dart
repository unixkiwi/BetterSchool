import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/presentation/pages/timetable_page/lesson_tile_timetable.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';

class DayLessonsList extends StatelessWidget {
  final TimetablePageViewmodel viewmodel;
  final List<Lesson?> lessons;

  const DayLessonsList({super.key, required this.viewmodel, required this.lessons});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await viewmodel.fetchData(force: true);
        SnackBar refreshMsg = SnackBar(
          content: Text('Updated timetable!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(refreshMsg);
      },
      child: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          if (lessons[index] == null) {
            return Column(
              children: [
                ListTile(title: Text("Lesson is null")),
                Divider(height: 0),
              ],
            );
          } else {
            return Column(
              children: [
                TimetableLessonTile(lesson: lessons[index]!),
                //Divider(height: 0),
              ],
            );
          }
        },
      ),
    );
  }
}
