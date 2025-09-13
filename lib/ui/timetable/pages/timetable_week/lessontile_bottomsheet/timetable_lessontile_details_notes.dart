part of 'timetable_lessontile_details_screen.dart';

class TimetableLessontileDetailsNotesSection extends StatelessWidget {
  final List<Note> notes;

  const TimetableLessontileDetailsNotesSection({
    super.key,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(minHeight: 60),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,
        child: notes.isEmpty
            ? ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(6),
                children: [
                  Text(
                    "There are no notes for this lesson.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              )
            : Scrollbar(
                interactive: true,
                radius: Radius.circular(6),
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(6),
                  itemCount: notes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: index != notes.length - 1
                          ? const EdgeInsets.only(bottom: 4, left: 2, right: 2)
                          : const EdgeInsets.symmetric(horizontal: 2),
                      child: _buildNoteTile(
                        context,
                        notes[index],
                        index == notes.length - 1,
                        index == 0,
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}

Widget _buildNoteTile(
  BuildContext context,
  Note note,
  bool isLast,
  bool isFirst,
) {
  BorderRadius radius;

  if (isLast && isFirst) {
    radius = BorderRadius.all(Radius.circular(8));
  } else if (isLast) {
    radius = BorderRadius.only(
      topLeft: Radius.circular(3),
      topRight: Radius.circular(3),
      bottomLeft: Radius.circular(8),
      bottomRight: Radius.circular(8),
    );
  } else if (isFirst) {
    radius = BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
      bottomLeft: Radius.circular(3),
      bottomRight: Radius.circular(3),
    );
  } else {
    radius = BorderRadius.all(Radius.circular(3));
  }

  return Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      borderRadius: radius,
      color: Theme.of(context).colorScheme.surfaceContainer,
      border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          note.type,
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.start,
        ),
        Text(
          note.desc,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.start,
        ),
      ],
    ),
  );
}
