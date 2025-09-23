import 'package:betterschool/domain/models/schoolday.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimetableDatebar extends StatelessWidget implements PreferredSizeWidget {
  final SchoolDay? currentDay;
  final void Function() onBack;
  final void Function() onNext;

  const TimetableDatebar({
    super.key,
    required this.currentDay,
    required this.onBack,
    required this.onNext,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  String _getText() {
    String text = "";

    if (currentDay == null && currentDay?.date == null) {
      text = "Loading...";
    } else {
      DateTime date = currentDay!.date;
      DateTime now = DateTime.now();
      DateTime today = DateTime(now.year, now.month, now.day);
      DateTime target = DateTime(date.year, date.month, date.day);

      String prefix = "";
      if (target == today) {
        prefix = "Today";
      } else if (target == today.subtract(const Duration(days: 1))) {
        prefix = "Yesterday";
      } else if (target == today.add(const Duration(days: 1))) {
        prefix = "Tomorrow";
      } else {
        prefix = DateFormat('EEEE').format(date);
      }

      text = "$prefix, ${DateFormat('d MMMM y').format(date)}";
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onBack,
        icon: Icon(Icons.keyboard_arrow_left_rounded),
      ),
      title: TextButton(
        onPressed: () {},
        child: Text(_getText(), style: Theme.of(context).textTheme.titleMedium),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: onNext,
          icon: Icon(Icons.keyboard_arrow_right_rounded),
        ),
      ],
    );
  }
}
