import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/subject.dart';

class SubjectGradesPage extends StatelessWidget {
  final Subject subject;
  final List<Grade> grades;
  final double avg;

  const SubjectGradesPage({
    super.key,
    required this.subject,
    required this.grades,
    required this.avg,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subject.name.length > 17 ? subject.shortName : subject.name),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Ø ${avg.toStringAsFixed(2)}"),
          ),
        ],
        elevation: 3,
      ),
      body: ListView.builder(
        itemCount: grades.length,
        itemBuilder: (context, index) {
          Grade grade = grades[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            child: Card.filled(
              elevation: 3,
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: ListTile(
                title: Text(
                  grade.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                subtitle: Wrap(
                  children: [
                    Chip(label: Text(grade.type), padding: EdgeInsets.zero),
                    SizedBox(width: 3),
                    Chip(
                      label: Text(DateFormat('d MMMM y').format(grade.date)),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                ),
                trailing: Text(
                  grade.valueString,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
