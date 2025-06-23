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
    List<Widget> getColorButtons() {
      logger.i(themeProvider.themeColor);

      List<Widget> buttons = [];

      // add material you color with null as the material you color
      buttons.add(MaterialYouColorSchemeButton(themeProvider: themeProvider));

      // add color buttons
      for (Color color in colors) {
        buttons.add(ColorButton(color: color, themeProvider: themeProvider));
      }

      return buttons;
    }

    return Column(
      children: [
        Text('Theme Color', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(right: 1, left: 1, top: 4, bottom: 4),
                child: Row(children: getColorButtons()),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
