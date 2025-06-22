import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/theme/theme_provider.dart';

class BrightnessSection extends StatelessWidget {
  ThemeMode currentMode;
  ThemeProvider themeProvider;

  BrightnessSection({
    super.key,
    required this.currentMode,
    required this.themeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Theme',
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 12),
        SegmentedButton<ThemeMode>(
          segments: const [
            ButtonSegment(
              value: ThemeMode.system,
              label: Text('System'),
              icon: Icon(Icons.settings_suggest_rounded),
            ),
            ButtonSegment(
              value: ThemeMode.light,
              label: Text('Light'),
              icon: Icon(Icons.light_mode),
            ),
            ButtonSegment(
              value: ThemeMode.dark,
              label: Text('Dark'),
              icon: Icon(Icons.dark_mode),
            ),
          ],
          selected: <ThemeMode>{currentMode},
          onSelectionChanged: (modes) {
            if (modes.isNotEmpty) {
              themeProvider.setThemeMode(modes.first);
            }
          },
          showSelectedIcon: false,
        ),
      ],
    );
  }
}
