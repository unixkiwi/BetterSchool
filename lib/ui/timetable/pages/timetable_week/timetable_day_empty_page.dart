import 'package:betterschool/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TimetableDayEmptyPage extends StatelessWidget {
  const TimetableDayEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(
                freetimeSvg,
                width: MediaQuery.of(context).size.width * 3 / 5,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Lucky you, you have the day off today.",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
