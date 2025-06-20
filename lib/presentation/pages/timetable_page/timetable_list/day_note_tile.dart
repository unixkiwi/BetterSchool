import 'package:flutter/material.dart';
import 'package:school_app/domain/models/note.dart';

class DayNoteTile extends StatelessWidget {
  final Note note;

  const DayNoteTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card.outlined(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.type.description,
                softWrap: true,
                maxLines: null,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                note.desc,
                style: Theme.of(context).textTheme.bodyLarge,
                softWrap: true,
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
