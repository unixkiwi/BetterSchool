import 'package:betterschool/routing/routes.dart';
import 'package:betterschool/ui/login/bloc/login_bloc.dart';
import 'package:betterschool/ui/login/widgets/login_btn.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauth_webauth/oauth_webauth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) async {
            if (state is LoginSuccessful) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                homeRoute,
                (Route route) => false,
              );
            } else if (state is LoginLoading) {
              await OAuthWebScreen.start(
                context: context,
                configuration: OAuthConfiguration(
                  authorizationEndpointUrl: state.data.authorizeUrl,
                  tokenEndpointUrl: state.data.tokenUrl,
                  clientSecret: state.data.clientSecret,
                  clientId: state.data.clientId,
                  redirectUrl: state.data.redirectUrl,
                  // BTN'S
                  refreshBtnVisible: true,
                  clearCacheBtnVisible: false,
                  closeBtnVisible: true,
                  goBackBtnVisible: false,
                  goForwardBtnVisible: false,
                  // BTN'S END
                  onSuccessAuth: (credentials) async {
                    logger.t("[OAuth native] OAuth success");
                    context.read<LoginBloc>().add(
                      SuccessfulOAuthLoginEvent(credentials: credentials),
                    );
                  },
                  onError: (error) {
                    logger.e("[OAuth native] Error: $error");
                    context.read<LoginBloc>().add(
                      FailedOAuthLoginEvent(error: error),
                    );
                  },
                  onCancel: () {
                    logger.t("[OAuth native] Cancelled!");
                    context.read<LoginBloc>().add(CancelledOAuthEvent());
                  },
                ),
              );
            }
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
