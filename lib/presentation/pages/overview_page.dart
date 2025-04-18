import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/data/repo/http_beste_schule_repo.dart';
import 'package:school_app/presentation/components/overview_lesson_tile.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SchoolApp")),
      body: FutureBuilder(
        future: context.watch<BesteSchuleRepoHTTP>().getWeek(nr: 16),
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

            /*return ListView.builder(
              itemCount: snap.data!.length,
              itemBuilder: (context, i) {
                return OverviewLessonTile(lessons: snap.data![i].lessons);
              },
            );*/
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
