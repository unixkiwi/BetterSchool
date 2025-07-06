import 'package:flutter/material.dart';
import 'package:school_app/presentation/pages/settings_page/grades_settings_section/grades_settings_section.dart';
import 'package:school_app/presentation/pages/settings_page/setting_title.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/brightness_section.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/color_scheme_section/color_scheme_section.dart';
import 'package:school_app/presentation/pages/settings_page/year_section/year_settings_section.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"), elevation: 3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SettingsTitle(title: "Theme"),
            BrightnessSection(),
            ColorSchemeSection(),
            SettingsTitle(title: "Grade Settings"),
            GradesSettingsSection(),
            SettingsTitle(title: "School Year"),
            YearSettingsSection(),
          ],
        ),
      ),
    );
  }
}
