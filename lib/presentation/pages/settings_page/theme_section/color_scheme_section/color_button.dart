import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/theme/theme_provider.dart';
import 'package:school_app/utils/logger.dart';

class ColorButton extends StatelessWidget {
  final Color color;
  ThemeProvider themeProvider;

  ColorButton({
    super.key,
    required this.color,
    required this.themeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        logger.i("[Color BTN] Color buttton with color $color was pressed");
        themeProvider.setThemeColor(color);
      },
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color:
                themeProvider.themeColor == color
                    ? Theme.of(context).colorScheme.outline
                    : Colors.transparent,
            width: 3,
          ),
        ),
        child: null,
      ),
    );
  }
}
