import 'package:flutter/material.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/presentation/pages/grades_page/subject_grades_page/subject_grades_page.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';

class AvgGradeTile extends StatelessWidget {
  final Subject subject;
  final double avgGrade;
  final GradesPageViewmodel viewModel;

  const AvgGradeTile({
    super.key,
    required this.subject,
    required this.avgGrade,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3),
      child: Card.filled(
        elevation: 3,
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: ListTile(
          onTap: () {
            //TODO on click open page with all grades of this subject
            Navigator.of(context).push(
              MaterialPageRoute(
                builder:
                    (context) => SubjectGradesPage(
                      subject: subject,
                      grades: viewModel.getGradesFromSubject(subject),
                    ),
              ),
            );
          },
          leading: Icon(Icons.leaderboard_outlined),
          title: Text(subject.name),
          trailing:
              avgGrade == -1
                  ? Icon(Icons.block)
                  : Text(
                    "Ø ${avgGrade.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  ),
        ),
      ),
    );
  }
}
