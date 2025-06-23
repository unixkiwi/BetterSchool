import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/pages/main_navbar/main_navbar.dart';
import 'package:school_app/presentation/viewmodels/login_page_viewmodel.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginPageViewmodel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(title: Text("Login"), leading: Icon(Icons.login)),
          extendBody: true,
          body: Center(
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () async {
                final success = await viewModel.login(context);
                if (success && context.mounted) {
                  // Use pushAndRemoveUntil to clear the navigation stack
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const MainNavBar()),
                    (route) => false,
                  );
                } else if (context.mounted && viewModel.token != null) {
                  // Not a student
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('AlertDialog Title'),
                        content: Text("You are not a student!"),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Quit'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (context.mounted && viewModel.token == null) {
                  // Login failed
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text('Login failed'),
                          content: const Text(
                            "Authentication failed. Please try again.",
                          ),
                          actions: [
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                  );
                }
              },
              child: Text(
                'Login with beste.schule',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
