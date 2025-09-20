import 'package:betterschool/domain/models/schoolday.dart';
import 'package:flutter/material.dart';

class TimetableDatebar extends StatelessWidget implements PreferredSizeWidget {
  final SchoolDay? currentDay;

  const TimetableDatebar({super.key, required this.currentDay});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.keyboard_arrow_left_rounded),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_right_rounded),
        ),
      ],
      title: TextButton(
        onPressed: () {},
        child: Text(currentDay?.date.toIso8601String() ?? "Loading..."),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
