import 'package:flutter/material.dart';



import 'package:intl/intl.dart';import 'package:school_app/domain/models/day.dart';class TimetableDateInfoBar extends StatelessWidget {
  final SchoolDay? day;
  
  const TimetableDateInfoBar({super.key, required this.day});

  String getDateText() {
    if (day == null) return "No date for this day.";
    
    return DateFormat('EEEE, d MMMM y').format(day!.date);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surfaceContainer,
      elevation: 1,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            getDateText(),
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
