import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageSelectMenuButton extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  final BuildContext ctx;
  final Color? optColor;
  late final Color color;

  //IDEA: add option for leading icon

  PageSelectMenuButton({
    super.key,
    required this.ctx,
    required this.title,
    required this.onClick,
    this.optColor,
  }) {
    color = optColor ?? Theme.of(ctx).colorScheme.secondaryContainer;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CupertinoButton(
          padding: const EdgeInsets.all(8.0),
          borderRadius: BorderRadius.circular(7),
          color: color,
          onPressed: onClick,
          child: Text(title, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
