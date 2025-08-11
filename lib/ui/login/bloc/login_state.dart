part of 'login_cubit.dart';

enum LoginStates { initial, loading, successful, error }

final class LoginState extends Equatable {
  final LoginStates state;

  const LoginState({this.state = LoginStates.initial});

  @override
  List<Object?> get props => [state];
}
