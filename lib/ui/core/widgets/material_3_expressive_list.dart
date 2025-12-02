import 'package:flutter/material.dart';

class Material3ExpressiveListTile extends ListTile {
  final int index;
  final int listLength;
  final Color? borderColor;
  final bool isLast;
  final bool isFirst;
  final Widget child;

  const Material3ExpressiveListTile({
    super.key,
    this.borderColor,
    required this.index,
    required this.listLength,
    required this.child,
  }) : isLast = listLength - 1 == index,
       isFirst = index == 0;

  BorderRadius _getBorderRadius() {
    if (isLast && isFirst) {
      return BorderRadius.vertical(
        top: Radius.circular(12),
        bottom: Radius.circular(12),
      );
    } else if (isLast) {
      return BorderRadius.vertical(
        top: Radius.circular(4),
        bottom: Radius.circular(12),
      );
    } else if (isFirst) {
      return BorderRadius.vertical(
        bottom: Radius.circular(4),
        top: Radius.circular(12),
      );
    } else {
      return BorderRadius.circular(4);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLast
          ? const EdgeInsets.symmetric(horizontal: 8)
          : const EdgeInsets.only(bottom: 4, left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: _getBorderRadius(),
          color: Theme.of(context).colorScheme.surfaceContainer,
          border: Border.all(
            color: borderColor ?? Theme.of(context).colorScheme.outline,
          ),
        ),
        child: child,
      ),
    );
  }
}
