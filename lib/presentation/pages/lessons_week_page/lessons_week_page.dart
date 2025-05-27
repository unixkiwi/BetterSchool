import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/repo/beste_schule_repo_impl.dart';
import 'overview_lesson_tile.dart';

class LessonsWeekPage extends StatelessWidget {
  const LessonsWeekPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lessons")),
      body: FutureBuilder(
        future: context.watch<BesteSchuleRepoImpl>().getWeek(nr: 16),
        builder: (context, snap) {
          if (snap.hasData) {
            return ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: snap.data!.length,
              itemBuilder: (context, rowIndex) {
                return Row(
                  children: List.generate(snap.data![rowIndex].lessons.length, (
                    colIndex,
                  ) {
                    return Expanded(
                      child: OverviewLessonTile(
                        lesson: snap.data![rowIndex].lessons[colIndex],
                      ),
                    );
                  }),
                );
              },
            );
          }

          if (snap.hasError) {
            print(snap.stackTrace);

            return ListView(children: [Text(snap.stackTrace!.toString())]);
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
