import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/viewmodels/grades_page_viewmodel.dart';

class GradesPage extends StatefulWidget {
  const GradesPage({super.key});

  @override
  State<GradesPage> createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  void initState() {
    super.initState();
    // trigger fetch when page was opened
    WidgetsBinding.instance.addPostFrameCallback((_) {
      log("Fetching grades data...");
      context.read<GradesPageViewmodel>().fetchData();
      log("Done fetching grades data.");
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
