import 'package:betterschool/data/repositories/auth/auth_repository.dart';
import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:betterschool/ui/login/bloc/login_bloc.dart';
import 'package:betterschool/utils/result.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oauth2/oauth2.dart';

class MockAuthRepo extends Mock implements AuthRepository {}

class MockSettingsRepository extends Mock implements SettingsRepository {}

void main() {
  late LoginBloc loginBloc;
  late MockAuthRepo mockAuthRepo;

  setUp(() {
    mockAuthRepo = MockAuthRepo();
    loginBloc = LoginBloc(mockAuthRepo);
  });

  tearDown(() {
    loginBloc.close();
  });

  group('LoginBloc', () {
    test('initial state is LoginInitial', () {
      expect(loginBloc.state, isA<LoginInitial>());
    });

    blocTest<LoginBloc, LoginState>(
      'emits [LoginSuccessful] when OAuth login is successful',
      build: () {
        when(
          () => mockAuthRepo.getToken(),
        ).thenAnswer((_) async => Result.success('valid_token'));
        when(() => mockAuthRepo.storeToken(any())).thenAnswer((_) async {});

        return loginBloc;
      },
      act: (bloc) => bloc.add(
        SuccessfulOAuthLoginEvent(credentials: Credentials('valid_token')),
      ),
      expect: () => [isA<LoginSuccessful>()],
    );

    blocTest<LoginBloc, LoginState>(
      'emits [LoginFailed] when OAuth login fails',
      build: () {
        when(
          () => mockAuthRepo.getToken(),
        ).thenAnswer((_) async => Result.error(Exception('Failed')));
        return loginBloc;
      },
      act: (bloc) =>
          bloc.add(FailedOAuthLoginEvent(error: Exception('Failed'))),
      expect: () => [isA<LoginFailed>()],
    );

    blocTest<LoginBloc, LoginState>(
      'emits [LoginInitial] when OAuth login is cancelled',
      build: () {
        return loginBloc;
      },
      act: (bloc) => bloc.add(CancelledOAuthEvent()),
      expect: () => [isA<LoginInitial>()],
    );
  });
}
