import 'package:betterschool/ui/core/widgets/loading.dart';
import 'package:betterschool/ui/grades/bloc/grades_bloc.dart';
import 'package:betterschool/ui/grades/pages/grades_empty_page.dart';
import 'package:betterschool/ui/grades/pages/grades_error_page.dart';
import 'package:betterschool/ui/grades/pages/grades_page.dart';
import 'package:betterschool/ui/grades/pages/subject_list_page.dart';
import 'package:betterschool/ui/grades/utils/grade_helpers.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGradesBloc extends MockBloc<GradesEvent, GradesState>
    implements GradesBloc {}

void main() {
  late MockGradesBloc mockGradesBloc;

  setUp(() {
    mockGradesBloc = MockGradesBloc();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: Scaffold(
        body: BlocProvider<GradesBloc>.value(
          value: mockGradesBloc,
          child: const GradesPage(),
        ),
      ),
    );
  }

  group('GradesPage', () {
    testWidgets('renders LoadingSpinner when state is GradesStateLoading', (
      tester,
    ) async {
      when(() => mockGradesBloc.state).thenReturn(GradesStateLoading());

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(find.byType(LoadingSpinner), findsOneWidget);
    });

    testWidgets('renders GradesEmptyPage when state is GradesEmptyState', (
      tester,
    ) async {
      when(() => mockGradesBloc.state).thenReturn(GradesEmptyState());

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(find.byType(GradesEmptyPage), findsOneWidget);
    });

    testWidgets('renders GradesErrorPage when state is GradesErrorState', (
      tester,
    ) async {
      when(() => mockGradesBloc.state).thenReturn(
        GradesErrorState(
          title: 'Error',
          description: 'Desc',
          errorType: GradesError.other,
        ),
      );

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(find.byType(GradesErrorPage), findsOneWidget);
    });

    testWidgets('renders SubjectListPage when state is GradesDataState', (
      tester,
    ) async {
      when(() => mockGradesBloc.state).thenReturn(
        GradesDataState(GradesData(grades: [], average: -1, gradesCount: 0)),
      );

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(find.byType(GradesListPage), findsOneWidget);
    });
  });
}
