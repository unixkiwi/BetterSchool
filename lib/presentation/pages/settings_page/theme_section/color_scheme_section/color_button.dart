import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/theme/theme_provider.dart';
import 'package:school_app/utils/logger.dart';

class ColorButton extends StatelessWidget {
  final Color color;
  ThemeProvider themeProvider;

  ColorButton({super.key, required this.color, required this.themeProvider});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        logger.i("[Color BTN] Color buttton with color $color was pressed");
        themeProvider.setThemeColor(color);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(
              color:
                  themeProvider.themeColor == color
                      ? Theme.of(context).colorScheme.onSecondaryContainer
                      : Colors.transparent,
              width: 3,
            ),
          ),
          child: null,
        ),
      ),
    );
  }
}
