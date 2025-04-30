import 'package:flutter/material.dart';
import 'package:school_app/presentation/pages/overview_page/page_select_menu_button.dart';

class PageSelectMenu extends StatelessWidget {
  const PageSelectMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Column(
        spacing: 25,
        children: [
          //TODO: implement the onclick and navigation to other pages
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageSelectMenuButton(ctx: context, title: "Plan", onClick: () {}),
              PageSelectMenuButton(
                ctx: context,
                title: "ToDo's",
                onClick: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageSelectMenuButton(
                ctx: context,
                title: "Grades",
                onClick: () {},
              ),
              PageSelectMenuButton(
                ctx: context,
                title: "Settings",
                onClick: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
