import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void showGlobalErrorDialog(String message) {
  final context = navigatorKey.currentState?.overlay?.context;
  if (context == null) return;
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('API Error'),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(ctx).pop(),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
