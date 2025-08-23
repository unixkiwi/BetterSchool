import 'package:betterschool/domain/models/schoolday.dart';
import 'package:flutter/material.dart';

class TimetableDayPage extends StatelessWidget {
  final SchoolDay day;

  const TimetableDayPage({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(day.id));
  }
}
