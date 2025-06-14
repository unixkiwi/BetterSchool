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
            child: MaterialButton(
              color: Theme.of(context).colorScheme.primaryContainer,
              onPressed: () async {
                final success = await viewModel.login(context);
                if (success && context.mounted) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MainNavBar()),
                  );
                } else {
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
                }
              },
              child: Text("Login with beste.schule"),
            ),
          ),
        );
      },
    );
  }
}
