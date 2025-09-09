import 'package:betterschool/domain/models/lesson.dart';
import 'package:flutter/material.dart';

class LessonDetailsDialog extends StatelessWidget {
  final Lesson lesson;

  const LessonDetailsDialog({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with close button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    lesson.subject.name,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close),
                  style: IconButton.styleFrom(
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.surfaceVariant,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            _buildScrollableInfoSection(
              context,
              "Rooms",
              lesson.rooms.map((r) => r.name).toList(),
            ),
            SizedBox(height: 16),
            _buildScrollableInfoSection(
              context,
              "Teachers",
              lesson.teachers.map((t) => "${t.forename} ${t.name}").toList(),
            ),
            SizedBox(height: 16),
            Text(
              "Notes:",
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            // Scrollable notes section
            Flexible(
              child: Container(
                width: double.infinity,
                constraints: BoxConstraints(minHeight: 60),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Scrollbar(
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(12),
                    children: [
                      // Example notes - replace with your actual notes list
                      Text(
                        "Note 1: This is the first note about the lesson",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Note 2: Another important note",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Note 3: Additional information",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Note 4: More details about the lesson",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Note 5: Final note",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      // Add more notes as needed...
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScrollableInfoSection(
    BuildContext context,
    String title,
    List<String> items,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title:",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 8),
                child: Chip(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  label: Text(items[index]),
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
