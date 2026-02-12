import 'dart:async';

import 'package:betterschool/ui/grades/utils/grade_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/grades_bloc.dart';
import 'subject_detail_page.dart';

class GradesListPage extends StatelessWidget {
  final GradesData gradesData;

  const GradesListPage({super.key, required this.gradesData});

  BorderRadius _getBorderRadius(bool isFirst, bool isLast) {
    if (isLast) {
      return const BorderRadius.vertical(
        top: Radius.circular(4),
        bottom: Radius.circular(12),
      );
    } else if (isFirst) {
      return const BorderRadius.vertical(
        bottom: Radius.circular(4),
        top: Radius.circular(12),
      );
    } else {
      return BorderRadius.circular(4);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Stats element
    final avg = gradesData.average;

    final statsItem = Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.surfaceContainer,
          border: Border.all(color: Theme.of(context).colorScheme.outline),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: getColorForGrade(avg).withValues(alpha: 0.15),
                child: Text(
                  gradesData.grades.isEmpty ? '———' : avg.toStringAsFixed(2),
                  style: TextStyle(
                    color: getColorForGrade(avg),
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Overall Average",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Based on ${gradesData.gradesCount} grades"),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    // Grade Items
    List<Widget> gradeItems = [];

    for (int index = 0; index < gradesData.grades.length; index++) {
      final subjectData = gradesData.grades[index];

      final avg = subjectData.average;
      final avgText = avg < 0 ? '———' : avg.toStringAsFixed(2);

      Color badgeColor;
      badgeColor = getColorForGrade(subjectData.average);

      final isFirst = index == 0;
      final isLast = index == gradesData.grades.length - 1;

      gradeItems.add(
        Padding(
          padding: isLast
              ? const EdgeInsets.symmetric(horizontal: 8)
              : const EdgeInsets.only(bottom: 4, left: 8, right: 8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: _getBorderRadius(isFirst, isLast),
              color: Theme.of(context).colorScheme.surfaceContainer,
              border: Border.all(color: Theme.of(context).colorScheme.outline),
            ),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SubjectDetailPage(
                      subject: subjectData.subject,
                      grades: subjectData.grades,
                      average: subjectData.average,
                    ),
                  ),
                );
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              leading: CircleAvatar(
                radius: 32,
                backgroundColor: badgeColor.withValues(alpha: 0.15),
                child: Text(
                  avgText,
                  style: TextStyle(
                    color: badgeColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              title: Text(
                subjectData.subject.name.length > 26
                    ? subjectData.subject.local_id
                    : subjectData.subject.name,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.chevron_right_rounded),
            ),
          ),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        final completer = Completer<void>();

        try {
          context.read<GradesBloc>().add(
            GradesPageRefreshedEvent(completer: completer),
          );

          await completer.future.timeout(const Duration(seconds: 30));
        } catch (_) {}
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Grades")),
        body: ListView(children: [statsItem, ...gradeItems]),
      ),
    );
  }
}
