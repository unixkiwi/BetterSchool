import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/settings/theme/theme_provider.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/brightness_section.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/color_scheme_section/color_scheme_section.dart';

class SettingsThemeSection extends StatelessWidget {
  const SettingsThemeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BrightnessSection(
              currentMode: themeProvider.themeMode,
              themeProvider: themeProvider,
            ),
            const SizedBox(height: 24),
            ColorSchemeSection(themeProvider: themeProvider), //TODO implement viewmodel recursively
          ],
        );
      },
    );
  }
}
