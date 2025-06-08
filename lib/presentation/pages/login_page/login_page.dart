import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/presentation/pages/overview_page/overview_page.dart';
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
            child:
                viewModel.loginResult == null
                    ? MaterialButton(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      onPressed: () async {
                        final success = await viewModel.login();
                        if (success && context.mounted) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const OverviewPage(),
                            ),
                          );
                        }
                      },
                      child: Text("Login with beste.schule"),
                    )
                    : SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            viewModel.loginResult!,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16),
                          MaterialButton(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            onPressed: () {
                              viewModel.loginResult = null;
                            },
                            child: Text("Back"),
                          ),
                        ],
                      ),
                    ),
          ),
        );
      },
    );
  }
}
