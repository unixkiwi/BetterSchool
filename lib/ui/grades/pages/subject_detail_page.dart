import 'package:betterschool/domain/models/grade.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/ui/core/widgets/field_chip.dart';
import 'package:betterschool/ui/core/widgets/material_3_expressive_list.dart';
import 'package:betterschool/ui/grades/utils/grade_helpers.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SubjectDetailPage extends StatelessWidget {
  final Subject subject;
  final List<Grade> grades;
  final double average;

  const SubjectDetailPage({
    super.key,
    required this.subject,
    required this.grades,
    required this.average,
  });

  BorderRadius _getBorderRadius(bool isFirst, bool isLast) {
    if (isLast && isFirst) {
      return BorderRadius.vertical(
        top: Radius.circular(12),
        bottom: Radius.circular(12),
      );
    } else if (isLast) {
      return BorderRadius.vertical(
        top: Radius.circular(4),
        bottom: Radius.circular(12),
      );
    } else if (isFirst) {
      return BorderRadius.vertical(
        bottom: Radius.circular(4),
        top: Radius.circular(12),
      );
    } else {
      return BorderRadius.circular(4);
    }
  }

  @override
  Widget build(BuildContext context) {
    final sorted = [...grades];
    sorted.sort((a, b) => b.date.compareTo(a.date));

    final avgText = average < 0 ? '———' : average.toStringAsFixed(2);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subject.name.length > 26 ? subject.local_id : subject.name),
            Text(
              '${grades.length} grade${grades.length == 1 ? '' : 's'}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: getColorForGrade(
                average,
              ).withValues(alpha: 0.15),
              child: Text(
                avgText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: getColorForGrade(average),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: sorted.length,
        itemBuilder: (context, index) {
          final g = sorted[index];

          return Material3ExpressiveListTile(
            index: index,
            listLength: sorted.length,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 10,
              ),
              title: Text(
                g.title,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FieldChip(child: Text(_formatDate(g.date))),
                    const SizedBox(width: 8),
                    FieldChip(child: Text(g.type)),
                  ],
                ),
              ),
              trailing: CircleAvatar(
                backgroundColor: getColorForGrade(
                  g.valueWithModifiers,
                ).withValues(alpha: 0.15),
                radius: 22,
                child: Text(
                  g.valueString,
                  style: TextStyle(
                    color: getColorForGrade(g.valueWithModifiers),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatDate(DateTime d) {
    try {
      return DateFormat.yMMMd().format(d.toLocal());
    } catch (_) {
      return '';
    }
  }
}
