import 'package:flutter/material.dart';
import 'package:school_app/domain/models/subject.dart';

class AvgGradeTile extends StatelessWidget {
  final Subject subject;
  final double avgGrade;

  const AvgGradeTile({
    super.key,
    required this.subject,
    required this.avgGrade,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        //TODO on click open page with all grades of this subject
      },
      leading: Icon(
        Icons.leaderboard_outlined,
      ), // keyboard_double_arrow_right_rounded
      title: Text(subject.name),
      trailing:
          avgGrade == -1
              ? Icon(Icons.block)
              : Text(
                "Ø ${avgGrade.toStringAsFixed(2)}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
    );
  }
}
