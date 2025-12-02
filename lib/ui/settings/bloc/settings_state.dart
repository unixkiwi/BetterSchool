part of 'settings_bloc.dart';

class SettingsState {
  final ThemeMode brightnessMode;
  final bool useModifiers;

  SettingsState({required this.brightnessMode, required this.useModifiers});

  SettingsState copyWith({ThemeMode? brightnessMode, bool? useModifiers}) {
    return SettingsState(
      brightnessMode: brightnessMode ?? this.brightnessMode,
      useModifiers: useModifiers ?? this.useModifiers,
    );
  }
}
