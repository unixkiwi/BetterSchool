import 'package:betterschool/ui/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings_tiles/settings_tiles.dart';

class SettingsPage extends StatelessWidget {
  final Map<ThemeMode, String> _themeNameMap = {
    ThemeMode.system: 'System Default',
    ThemeMode.light: 'Light',
    ThemeMode.dark: 'Dark',
  };

  final Map<ThemeMode, IconData> _themeIconMap = {
    ThemeMode.system: Icons.brightness_auto_rounded,
    ThemeMode.light: Icons.light_mode_rounded,
    ThemeMode.dark: Icons.dark_mode_rounded,
  };

  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsBloc>.value(
      value: context.read<SettingsBloc>(),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text("Settings")),
            body: ListView(
              children: [
                // LOOK & FEEl
                SettingSection(
                  title: SettingSectionTitle("Look & Feel"),
                  tiles: [
                    // BRIGHTNESS MODE
                    SettingSingleOptionTile<String>(
                      icon: SettingTileIcon(
                        _themeIconMap[state.brightnessMode]!,
                      ),
                      title: Text('Brightness Mode'),
                      value: SettingTileValue(
                        _themeNameMap[state.brightnessMode]!,
                      ),
                      description: Text('Select the app\'s brightness mode'),
                      dialogTitle: 'Brightness Mode',
                      options: [
                        _themeNameMap[ThemeMode.system]!,
                        _themeNameMap[ThemeMode.light]!,
                        _themeNameMap[ThemeMode.dark]!,
                      ],
                      initialOption: _themeNameMap[state.brightnessMode],
                      onSubmitted: (value) {
                        context.read<SettingsBloc>().add(
                          ChangeThemeModeEvent(
                            _themeNameMap.entries
                                .firstWhere((entry) => entry.value == value)
                                .key,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                // GRADES
                SettingSection(
                  title: SettingSectionTitle("Grades"),
                  tiles: [
                    // USE GRADE MODIFIERS
                    SettingSwitchTile(
                      icon: SettingTileIcon(Icons.calculate_rounded),
                      title: Text('Use Grade Modifiers'),
                      description: Text(
                        'Include + and - modifiers in grade calculations',
                      ),
                      value: SettingTileValue(
                        state.useModifiers ? 'On' : 'Off',
                      ),
                      onChanged: (value) {
                        context.read<SettingsBloc>().add(
                          ChangeUseModifiersEvent(value),
                        );
                      },
                      toggled: state.useModifiers,
                    ),

                    // USE AVERAGE GRADE CALCULATION FORMULA
                    SettingSwitchTile(
                      icon: SettingTileIcon(Icons.functions_rounded),
                      title: Text('Use Average Grade Calculation Formula'),
                      description: Text(
                        'Use the average grade calculation formula from your teachers from beste.schule',
                      ),
                      value: SettingTileValue(
                        state.useAvgGradeCalcFormula ? 'On' : 'Off',
                      ),
                      onChanged: (value) {
                        context.read<SettingsBloc>().add(
                          ChangeUseAvgGradeCalcFormulaEvent(value),
                        );
                      },
                      toggled: state.useAvgGradeCalcFormula,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
