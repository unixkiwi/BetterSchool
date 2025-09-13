part of 'timetable_lessontile_details_screen.dart';

class TimetableLessontileDetailsSublessonsSection extends StatelessWidget {
  final List<Lesson> sublessons;

  const TimetableLessontileDetailsSublessonsSection({
    super.key,
    required this.sublessons,
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
        child: sublessons.isEmpty
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
                  itemCount: sublessons.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: index != sublessons.length - 1
                          ? const EdgeInsets.only(bottom: 4, left: 2, right: 2)
                          : const EdgeInsets.symmetric(horizontal: 2),
                      child: TimetableLessonTile(lesson: sublessons[index]),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
