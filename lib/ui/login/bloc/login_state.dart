part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

/// Initial state -> first load of the page
final class LoginInitial extends LoginState {}

/// Data: authorizeURL, tokenURL, client secret, clientID, redirectURL
final class OAuthWebViewData extends Equatable {
  final String authorizeUrl;
  final String tokenUrl;
  final String clientSecret;
  final String clientId;
  final String redirectUrl;

  const OAuthWebViewData({
    required this.authorizeUrl,
    required this.tokenUrl,
    required this.clientSecret,
    required this.clientId,
    required this.redirectUrl,
  });

  @override
  List<Object?> get props => [
    authorizeUrl,
    tokenUrl,
    clientSecret,
    clientId,
    redirectUrl,
  ];
}

/// Loading state -> OAuth WebView shown, transmits data for oauth WebView
/// Data: authorizeURL, tokenURL, client secret, clientID, redirectURL
final class LoginLoading extends LoginState {
  final OAuthWebViewData data;

  LoginLoading({required this.data});
}

/// Successful state -> mostly not visible
final class LoginSuccessful extends LoginState {}

/// Failed state -> when failed, contains error
final class LoginFailed extends LoginState {
  final Exception error;

  LoginFailed({required this.error});
}
