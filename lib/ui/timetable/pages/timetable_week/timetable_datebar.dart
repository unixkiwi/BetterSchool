import 'package:betterschool/domain/models/schoolday.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onBack,
        icon: Icon(Icons.keyboard_arrow_left_rounded),
      ),
      title: TextButton(
        onPressed: () {},
        child: Text(currentDay?.date.toIso8601String() ?? "Loading..."),
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
