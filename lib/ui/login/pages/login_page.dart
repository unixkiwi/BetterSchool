import 'package:betterschool/ui/login/widgets/login_btn.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: LoginButton()));
  }
}
