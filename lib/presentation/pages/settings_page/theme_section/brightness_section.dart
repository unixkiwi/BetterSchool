import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/settings_provider.dart';

class BrightnessSection extends StatelessWidget {
  final ThemeMode currentMode = SettingsProvider.instance.themeMode;
  final SettingsProvider settingsProvider = SettingsProvider.instance;

  BrightnessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<ThemeMode>(
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
          settingsProvider.setThemeMode(modes.first);
        }
      },
      showSelectedIcon: false,
    );
  }
}
