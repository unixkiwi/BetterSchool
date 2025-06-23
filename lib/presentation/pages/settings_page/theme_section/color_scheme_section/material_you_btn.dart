import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/settings_provider.dart';
import 'package:school_app/utils/logger.dart';

class MaterialYouColorSchemeButton extends StatelessWidget {
  final SettingsProvider settingsProvider;

  MaterialYouColorSchemeButton({super.key, required this.settingsProvider});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        logger.i("[Color BTN] Material You BTN was pressed");
        settingsProvider.setThemeColor(null);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: settingsProvider.themeColor == null
                ? Border.all(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    width: 3,
                  )
                : Border.all(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    width: 1,
                  ),
          ),
          child: Icon(Icons.colorize_rounded, size: 32),
        ),
      ),
    );
  }
}
