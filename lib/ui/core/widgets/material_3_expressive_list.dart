import 'package:flutter/material.dart';

class Material3ExpressiveListTile extends ListTile {
  final int index;
  final int listLength;
  final Color? borderColor;
  final bool isLast;
  final bool isFirst;

  const Material3ExpressiveListTile({
    super.key,
    this.borderColor,
    required this.index,
    required this.listLength,
    super.leading,
    super.title,
    super.subtitle,
    super.trailing,
    bool super.isThreeLine = false,
    super.dense,
    super.visualDensity,
    super.shape,
    super.style,
    super.selectedColor,
    super.iconColor,
    super.textColor,
    super.titleTextStyle,
    super.subtitleTextStyle,
    super.leadingAndTrailingTextStyle,
    super.contentPadding,
    super.enabled,
    super.onTap,
    super.onLongPress,
    super.onFocusChange,
    super.mouseCursor,
    super.selected,
    super.focusColor,
    super.hoverColor,
    super.splashColor,
    super.focusNode,
    super.autofocus,
    super.tileColor,
    super.selectedTileColor,
    super.enableFeedback,
    super.horizontalTitleGap,
    super.minVerticalPadding,
    super.minLeadingWidth,
    super.minTileHeight,
    super.titleAlignment,
    super.internalAddSemanticForOnTap,
    super.statesController,
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
        child: ListTile(
          leading: leading,
          title: title,
          subtitle: subtitle,
          trailing: trailing,
          isThreeLine: isThreeLine,
          dense: dense,
          contentPadding: contentPadding,
          enabled: enabled,
          onTap: onTap,
          onLongPress: onLongPress,
          mouseCursor: mouseCursor,
          selected: selected,
          focusColor: focusColor,
          hoverColor: hoverColor,
          focusNode: focusNode,
          autofocus: autofocus,
          tileColor: tileColor,
          selectedTileColor: selectedTileColor,
          horizontalTitleGap: horizontalTitleGap,
          minVerticalPadding: minVerticalPadding,
          minLeadingWidth: minLeadingWidth,
          visualDensity: visualDensity,
          shape: shape,
          enableFeedback: enableFeedback,
          iconColor: iconColor,
          internalAddSemanticForOnTap: internalAddSemanticForOnTap,
          key: key,
          leadingAndTrailingTextStyle: leadingAndTrailingTextStyle,
          minTileHeight: minTileHeight,
          onFocusChange: onFocusChange,
          selectedColor: selectedColor,
          splashColor: splashColor,
          statesController: statesController,
          style: style,
          subtitleTextStyle: subtitleTextStyle,
          textColor: textColor,
          titleAlignment: titleAlignment,
          titleTextStyle: titleTextStyle,
        ),
      ),
    );
  }
}
