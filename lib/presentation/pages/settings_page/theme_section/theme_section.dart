import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/settings/settings_provider.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/brightness_section.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/color_scheme_section/color_scheme_section.dart';

class SettingsThemeSection extends StatelessWidget {
  const SettingsThemeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, settingsProvider, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BrightnessSection(
              currentMode: settingsProvider.themeMode,
              settingsProvider: settingsProvider,
            ),
            const SizedBox(height: 24),
            ColorSchemeSection(settingsProvider: settingsProvider),
          ],
        );
      },
    );
  }
}
