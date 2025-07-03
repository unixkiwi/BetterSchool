import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/settings_provider.dart';

class GradesSettingsSection extends StatefulWidget {
  const GradesSettingsSection({super.key});

  @override
  State<GradesSettingsSection> createState() => _GradesSettingsSectionState();
}

class _GradesSettingsSectionState extends State<GradesSettingsSection> {
  bool get _usePlainGradeValue => (!SettingsProvider.instance.usePlainGradeValue);

  void _onSwitchChanged(bool value) {
    SettingsProvider.instance.setUsePlainGradeValue(!value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Grades', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 12),
        SwitchListTile(
          value: _usePlainGradeValue,
          onChanged: _onSwitchChanged,
          title: Text("Use Grade Modifiers"),
          subtitle: Text(
            "Include plus and minus of grades when calculating their value. (beste.schule is not using them)",
          ),
        ),
        const SizedBox(height: 24), 
      ],
    );
  }
}
