import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/theme/theme_provider.dart';
import 'package:school_app/utils/logger.dart';

class MaterialYouColorSchemeButton extends StatelessWidget {
  ThemeProvider themeProvider;

  MaterialYouColorSchemeButton({
    super.key,
    required this.themeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        logger.i("[Color BTN] Material You BTN was pressed");
        themeProvider.setThemeColor(null);
      },
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color:
                themeProvider.themeColor == null
                    ? Theme.of(context).colorScheme.outline
                    : Colors.transparent,
            width: 2,
          ),
        ),
        child: Icon(Icons.settings_suggest_rounded),
      ),
    );
  }
}
