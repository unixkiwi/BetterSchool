import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/presentation/pages/timetable_page/lesson_tile_timetable.dart';
import 'package:school_app/presentation/viewmodels/timetable_page_viewmodel.dart';

class DayLessonsList extends StatelessWidget {
  final TimetablePageViewmodel viewmodel;
  final List<Lesson?> lessons;

  const DayLessonsList({
    super.key,
    required this.viewmodel,
    required this.lessons,
  });

  List<Widget> getLessonWidgets(List<Lesson?> lessons) {
    List<Widget> widgets = [];
    int i = 0;
    while (i < lessons.length) {
      final Lesson? first = lessons[i];
      final Lesson? second = (i + 1 < lessons.length) ? lessons[i + 1] : null;

      // no lesson data
      if (first == null && second == null) {
        widgets.add(
          Row(
            children: [
              Expanded(child: ListTile(title: Text("No data"))),
              Expanded(child: ListTile(title: Text("No data"))),
            ],
          ),
        );
        i += 2;
        continue;
      }

      // only first lesson available
      if (first != null && second == null) {
        widgets.add(
          Row(
            children: [
              Expanded(child: TimetableLessonTile(lesson: first)),
              Expanded(child: ListTile(title: Text("No data"))),
            ],
          ),
        );
        i += 2;
        continue;
      }

      // only second lesson available
      if (first == null && second != null) {
        widgets.add(
          Row(
            children: [
              Expanded(child: ListTile(title: Text("No data"))),
              Expanded(child: TimetableLessonTile(lesson: second)),
            ],
          ),
        );
        i += 2;
        continue;
      }

      //FIXME fix when cancelle, the lesson is two times there so there are two lessons with the same nr 

      // Both present
      if (first != null && second != null) {
        // same subjects
        if (first.subject.id == second.subject.id) {
          widgets.add(TimetableLessonTile(lesson: first));
          i += 2;
        } else { // different subjects
          widgets.add(
            Row(
              children: [
                Expanded(child: TimetableLessonTile(lesson: first)),
                Expanded(child: TimetableLessonTile(lesson: second)),
              ],
            ),
          );
          i += 2;
        }
        continue;
      }

      // Fallback
      i += 2;
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    // sort lessons by nr ascending
    final sortedLessons = List<Lesson?>.from(lessons)..sort((a, b) {
      if (a == null && b == null) return 0;
      if (a == null) return 1;
      if (b == null) return -1;
      return a.nr.compareTo(b.nr);
    });

    return RefreshIndicator(
      onRefresh: () async {
        await viewmodel.fetchData(force: true);
        SnackBar refreshMsg = SnackBar(content: Text('Updated timetable!'));
        ScaffoldMessenger.of(context).showSnackBar(refreshMsg);
      },
      child: ListView(children: getLessonWidgets(sortedLessons),) /*ListView.builder(
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
      ),*/
    );
  }
}
