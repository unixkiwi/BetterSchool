import 'package:betterschool/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TimetableEmptyPage extends StatelessWidget {
  const TimetableEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Timetable"),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: SvgPicture.asset(
                  noDataSvg,
                  width: MediaQuery.of(context).size.width * 3 / 5,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 25,),
              Text("No lessons for this week.", style: Theme.of(context).textTheme.headlineSmall,)
            ],
          ),
        ),
      ),
    );
  }
}
