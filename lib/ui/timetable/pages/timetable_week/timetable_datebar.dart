import 'package:flutter/material.dart';

class TimetableDatebar extends StatelessWidget implements PreferredSizeWidget {
  const TimetableDatebar({super.key});

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
        child: Text(DateTime.now().toIso8601String()),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
