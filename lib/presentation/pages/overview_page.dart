import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/data/repo/http_beste_schule_repo.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SchoolApp")),
      body: FutureBuilder(
        future: context.watch<BesteSchuleRepoHTTP>().getWeek(nr: 13),
        builder: (context, snap) {
          if (snap.hasData) {
            return ListView.builder(
              itemCount: snap.data?.length,
              itemBuilder: (context, i) {
                print(snap.data![i].date.day);

                return ListTile(
                  title: Text(snap.data![i].lessons.first.name),
                  subtitle: Text(snap.data![i].date.weekday.toString()),
                );
              },
            );
          }

          if (snap.hasError) {
            return ListView(children: [Text(snap.error!.toString())]);
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
