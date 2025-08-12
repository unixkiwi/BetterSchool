import 'package:betterschool/ui/login/bloc/login_bloc.dart';
import 'package:betterschool/ui/login/widgets/login_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginLoading) {}
          },
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is LoginLoading) {
                return CircularProgressIndicator();
              } else if (state is LoginFailed) {
                return Icon(Icons.error_rounded);
              } else if (state is LoginSuccessful) {
                return Icon(Icons.check_circle_rounded);
              } else {
                return LoginButton(
                  onPressed: () =>
                      context.read<LoginBloc>().add(LoginButtonPressedEvent()),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
