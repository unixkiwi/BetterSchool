import 'package:betterschool/ui/core/widgets/loading.dart';
import 'package:flutter/widgets.dart';

class TimetableLoadingPage extends StatelessWidget {
  const TimetableLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingSpinner();
  }
}
