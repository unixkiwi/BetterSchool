import 'package:betterschool/data/models/settings/grades/use_beste_schule_grade_avg_calc_formula.dart';
import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:betterschool/data/repositories/timetable/timetable_repo.dart';
import 'package:betterschool/domain/models/week.dart';
import 'package:betterschool/ui/timetable/bloc/timetable_bloc.dart';
import 'package:betterschool/utils/result.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTimetableRepo extends Mock implements TimetableRepo {}

class MockSettingsRepository extends Mock implements SettingsRepository {}

class MockUseBesteSchuleGradeAvgCalcFormula extends Mock
    implements UseBesteSchuleGradeAvgCalcFormula {}

void main() {
  late TimetableBloc timetableBloc;
  late MockTimetableRepo mockTimetableRepo;

  setUp(() {
    mockTimetableRepo = MockTimetableRepo();

    timetableBloc = TimetableBloc(mockTimetableRepo);
  });

  tearDown(() {
    timetableBloc.close();
  });

  group('TimetableBloc', () {
    test('initial state is TimetableStateLoading', () {
      expect(timetableBloc.state, isA<TimetableStateLoading>());
    });

    blocTest<TimetableBloc, TimetableState>(
      'emits [TimetableStateLoading, TimetableEmptyState] when getTimetable returns empty list',
      build: () {
        when(
          () => mockTimetableRepo.getWeek(
            WeekString(year: 2026, week: 4),
            forceRefresh: any(named: 'forceRefresh'),
          ),
        ).thenAnswer((_) async => Result.success(SchoolWeek(nr: 6, days: [])));
        return timetableBloc;
      },
      act: (bloc) => bloc.add(
        TimetableRefreshEvent(weekString: WeekString(year: 2026, week: 4)),
      ),
      expect: () => [isA<TimetableWeekState>()],
    );

    blocTest<TimetableBloc, TimetableState>(
      'emits [TimetableStateLoading, TimetableErrorState] when getTimetable returns an error',
      build: () {
        when(
          () => mockTimetableRepo.getWeek(
            WeekString(year: 2026, week: 4),
            forceRefresh: any(named: 'forceRefresh'),
          ),
        ).thenAnswer((_) async => Result.error(Exception('Failed')));
        return timetableBloc;
      },
      act: (bloc) => bloc.add(
        TimetableRefreshEvent(weekString: WeekString(year: 2026, week: 4)),
      ),
      expect: () => [isA<TimetableErrorState>()],
    );
  });
}
