import 'package:betterschool/data/models/settings/grades/use_beste_schule_grade_avg_calc_formula.dart';
import 'package:betterschool/data/repositories/grades/grade_repo.dart';
import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:betterschool/ui/grades/bloc/grades_bloc.dart';
import 'package:betterschool/utils/result.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGradeRepo extends Mock implements GradeRepo {}

class MockSettingsRepository extends Mock implements SettingsRepository {}

class MockUseBesteSchuleGradeAvgCalcFormula extends Mock
    implements UseBesteSchuleGradeAvgCalcFormula {}

void main() {
  late GradesBloc gradesBloc;
  late MockGradeRepo mockGradeRepo;
  late MockSettingsRepository mockSettingsRepository;
  late MockUseBesteSchuleGradeAvgCalcFormula mockCalcFormula;

  setUp(() {
    mockGradeRepo = MockGradeRepo();
    mockSettingsRepository = MockSettingsRepository();
    mockCalcFormula = MockUseBesteSchuleGradeAvgCalcFormula();

    when(
      () => mockSettingsRepository.useBesteSchuleGradeAvgCalcFormula,
    ).thenReturn(mockCalcFormula);
    when(() => mockCalcFormula.getValue()).thenReturn(false);

    gradesBloc = GradesBloc(mockGradeRepo, mockSettingsRepository);
  });

  tearDown(() {
    gradesBloc.close();
  });

  group('GradesBloc', () {
    test('initial state is GradesStateLoading', () {
      expect(gradesBloc.state, isA<GradesStateLoading>());
    });

    blocTest<GradesBloc, GradesState>(
      'emits [GradesStateLoading, GradesEmptyState] when getGrades returns empty list',
      build: () {
        when(
          () =>
              mockGradeRepo.getGrades(forceRefresh: any(named: 'forceRefresh')),
        ).thenAnswer((_) async => Result.success([]));
        return gradesBloc;
      },
      act: (bloc) => bloc.add(GradesPageRefreshedEvent()),
      expect: () => [isA<GradesEmptyState>()],
    );

    blocTest<GradesBloc, GradesState>(
      'emits [GradesErrorState] when getGrades returns error',
      build: () {
        when(
          () =>
              mockGradeRepo.getGrades(forceRefresh: any(named: 'forceRefresh')),
        ).thenAnswer((_) async => Result.error(Exception('Failed')));
        return gradesBloc;
      },
      act: (bloc) => bloc.add(GradesPageRefreshedEvent()),
      expect: () => [isA<GradesErrorState>()],
    );
  });
}
