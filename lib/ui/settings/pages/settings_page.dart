import 'package:betterschool/domain/models/year.dart';
import 'package:betterschool/ui/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:settings_tiles/settings_tiles.dart';
import 'package:url_launcher/url_launcher.dart';

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
                // SCHOOL YEAR
                SettingSection(
                  title: SettingSectionTitle("School Year"),
                  tiles: [
                    if (state.isLoadingYears)
                      SettingSingleOptionTile<String>(
                        icon: SettingTileIcon(Icons.calendar_today_rounded),
                        title: Text('Selected Year'),
                        value: SettingTileValue('Loading...'),
                        description: Text('Select the school year'),
                        dialogTitle: 'Loading',
                        options: const ['Loading...'],
                        initialOption: 'Loading...',
                        onSubmitted: (_) {},
                      )
                    else
                      SettingSingleOptionTile<String>(
                        icon: SettingTileIcon(Icons.calendar_today_rounded),
                        title: Text('Selected Year'),
                        value: SettingTileValue(
                          state.availableYears
                              .firstWhere(
                                (y) => y.id == state.selectedYearId,
                                orElse: () => SchoolYear.empty(),
                              )
                              .name,
                        ),
                        description: Text('Select the school year'),
                        dialogTitle: 'Select Year',
                        options: state.availableYears
                            .map((y) => y.name)
                            .toList(),
                        initialOption: state.availableYears
                            .firstWhere(
                              (y) => y.id == state.selectedYearId,
                              orElse: () => SchoolYear.empty(),
                            )
                            .name,
                        onSubmitted: (value) {
                          final selected = state.availableYears.firstWhere(
                            (y) => y.name == value,
                            orElse: () => SchoolYear.empty(),
                          );
                          if (selected.id != -1) {
                            context.read<SettingsBloc>().add(
                              ChangeSelectedYearEvent(selected.id),
                            );
                          }
                        },
                      ),
                  ],
                ),
                // About
                FutureBuilder<PackageInfo>(
                  future: PackageInfo.fromPlatform(),
                  builder: (context, snapshot) {
                    final version = snapshot.hasData
                        ? snapshot.data!.version
                        : 'Unknown';
                    return SettingSection(
                      title: SettingSectionTitle("About"),
                      tiles: [
                        SettingAboutTile(
                          applicationName: "BetterSchool",
                          applicationVersion: version,
                          applicationLegalese: "AGPL v3.0 License",
                          applicationIcon: Image.asset(
                            'assets/app_icon.png',
                            width: 64,
                            height: 64,
                          ),
                          dialogChildren: [
                            ListTile(
                              title: Text("Author"),
                              subtitle: Text("unixkiwi"),
                              onTap: () {
                                launchUrl(
                                  Uri.parse("https://github.com/unixkiwi"),
                                );
                              },
                            ),
                            ListTile(
                              title: Text("Source"),
                              subtitle: Text(
                                "https://github.com/unixkiwi/BetterSchool",
                              ),
                              onTap: () {
                                launchUrl(
                                  Uri.parse(
                                    "https://github.com/unixkiwi/BetterSchool",
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
