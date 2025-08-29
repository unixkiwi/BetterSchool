import 'package:flutter/material.dart';

class FieldChip extends StatelessWidget {
  final Widget child;
  final Color? bgColor;
  final EdgeInsetsGeometry? padding;

  const FieldChip({super.key, required this.child, this.bgColor, this.padding});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: bgColor ?? Theme.of(
        context,
      ).colorScheme.surfaceContainerHighest,
      padding: padding ?? EdgeInsets.all(2),
      label: child, 
    );
  }
}

class FieldChipWithTooltip extends StatelessWidget {
  final FieldChip chip;
  final String tooltip;
  /// Default trigger mode is tap
  final TooltipTriggerMode? triggerMode;

  const FieldChipWithTooltip({
    super.key,
    required this.chip,
    required this.tooltip,
    this.triggerMode,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      triggerMode: triggerMode ?? TooltipTriggerMode.tap,
      message: tooltip,
      child: chip,
    );
  }
}
