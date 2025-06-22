import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/domain/settings/theme/theme_provider.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/theme_section.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SettingsThemeSection(),
    );
  }
}
