import 'package:betterschool/config/constants.dart';
import 'package:betterschool/data/repositories/auth_repository.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:betterschool/utils/result.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauth2/oauth2.dart';

part 'login_state.dart';
part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepo;

  LoginBloc(this.authRepo) : super(LoginInitial()) {
    on<LoginButtonPressedEvent>(_onLoginBtnPressed);
    on<AppStartedEvent>(_onAppStarted);
    on<SuccessfulOAuthLoginEvent>(_onOAuthSuccess);
  }

  Future<void> _onAppStarted(
    AppStartedEvent event,
    Emitter<LoginState> emit,
  ) async {
    Result<String> token = await authRepo.getToken();

    switch (token) {
      case Success<String>():
        logger.d("Token was successfully aquired locally. ${token.value} ");
        emit(LoginSuccessful());
        break;
      case Error<String>():
        logger.t(
          "The token could not by aquired by the auth repo. ${token.error.toString()}",
        );
        break;
    }
  }

  void _onLoginBtnPressed(
    LoginButtonPressedEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(
      LoginLoading(
        data: OAuthWebViewData(
          authorizeUrl: authorizeUrl,
          tokenUrl: tokenUrl,
          clientSecret: clientSecret,
          clientId: clientSecret,
          redirectUrl: redirectUrl,
        ),
      ),
    );
  }

  Future<void> _onOAuthSuccess(
    SuccessfulOAuthLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    await authRepo.storeToken(event.credentials.accessToken);

    emit(LoginSuccessful());
  }
}
