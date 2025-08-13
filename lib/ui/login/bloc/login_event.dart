part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

final class AppStartedEvent extends LoginEvent {}

final class LoginButtonPressedEvent extends LoginEvent {}

final class SuccessfulOAuthLoginEvent extends LoginEvent {
  final Credentials credentials;

  SuccessfulOAuthLoginEvent({required this.credentials});
}

final class CancelledOAuthEvent extends LoginEvent {}

final class FailedOAuthLoginEvent extends LoginEvent {
  final dynamic error;

  FailedOAuthLoginEvent({required this.error});
}
