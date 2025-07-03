import 'package:flutter/material.dart';
import 'package:school_app/domain/models/school_year.dart';

class SchoolYearMenuButton extends StatelessWidget {
  final SchoolYear year;

  const SchoolYearMenuButton({super.key, required this.year});

  @override
  Widget build(BuildContext context) {
    return Text(year.name);
  }
}
