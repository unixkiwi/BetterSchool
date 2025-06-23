import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/theme/theme_provider.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/color_scheme_section/color_button.dart';
import 'package:school_app/presentation/pages/settings_page/theme_section/color_scheme_section/material_you_btn.dart';
import 'package:school_app/utils/logger.dart';

class ColorSchemeSection extends StatelessWidget {
  final ThemeProvider themeProvider;
  
  ColorSchemeSection({super.key, required this.themeProvider});

  // .shade500 so that the value is a Color and not a MaterialColor
  final List<Color> colors = [
    Colors.red.shade500,
    Colors.orange.shade500,
    Colors.yellow.shade500,
    Colors.lightGreen.shade500,
    Colors.green.shade500,
    Colors.teal.shade500,
    Colors.lightBlue.shade500,
    Colors.blue.shade500,
    Colors.purple.shade500,
    Colors.deepPurple.shade500,
  ];

  @override
  Widget build(BuildContext context) {
    //FIXME button isn't selected when opening page
    
    List<Widget> getColorButtons() {
      logger.i(themeProvider.themeColor);

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
