import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/theme/theme_provider.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/color_scheme_section/color_button.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/color_scheme_section/material_you_btn.dart';

class ColorSchemeSection extends StatelessWidget {
  final ThemeProvider themeProvider;
  
  ColorSchemeSection({super.key, required this.themeProvider});

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.lightGreen,
    Colors.green,
    Colors.teal,
    Colors.lightBlue,
    Colors.blue,
    Colors.purple,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> getColorButtons() {
      List<Widget> buttons = [];

      // add material you color with null as the material you color
      buttons.add(
        MaterialYouColorSchemeButton(
          themeProvider: themeProvider,
        ),
      );

      // add color buttons
      for (Color color in colors) {
        buttons.add(
          ColorButton(
            color: color,
            themeProvider: themeProvider,
          ),
        );
      }

      return buttons;
    }

    return Column(
      children: [
        Text('Theme Color', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 12),
        Wrap(spacing: 12, children: getColorButtons()),
      ],
    );
  }
}
