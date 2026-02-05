import 'package:betterschool/config/constants.dart';
import 'package:betterschool/ui/login/bloc/login_bloc.dart';
import 'package:betterschool/ui/login/pages/login_page.dart';
import 'package:betterschool/ui/login/widgets/login_btn.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginBloc extends MockBloc<LoginEvent, LoginState>
    implements LoginBloc {}

void main() {
  late MockLoginBloc mockLoginBloc;
  setUp(() {
    mockLoginBloc = MockLoginBloc();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: Scaffold(
        body: BlocProvider<LoginBloc>.value(
          value: mockLoginBloc,
          child: const LoginPage(),
        ),
      ),
    );
  }

  group('LoginPage', () {
    testWidgets('renders LoadingSpinner when state is LoginLoading', (
      tester,
    ) async {
      when(() => mockLoginBloc.state).thenReturn(
        LoginLoading(
          data: OAuthWebViewData(
            authorizeUrl: authorizeUrl,
            tokenUrl: tokenUrl,
            clientSecret: clientSecret,
            clientId: clientId,
            redirectUrl: redirectUrl,
          ),
        ),
      );
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders Error when state is LoginFailed', (tester) async {
      when(
        () => mockLoginBloc.state,
      ).thenReturn(LoginFailed(error: Exception('Testing error')));

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(
        find.text('Login failed: ${Exception('Testing error').toString()}'),
        findsOne,
      );
    });

    testWidgets('renders Icon when state is LoginSuccessful', (tester) async {
      when(() => mockLoginBloc.state).thenReturn(LoginSuccessful());

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(find.byType(Icon), findsOneWidget);
    });

    testWidgets('renders LoginButton initially', (tester) async {
      when(() => mockLoginBloc.state).thenReturn(LoginInitial());

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(find.byType(LoginButton), findsOneWidget);
    });
  });
}
