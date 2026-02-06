import 'package:betterschool/data/models/settings/look_and_feel/brightness_mode_setting.dart';
import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:betterschool/domain/models/grade.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/ui/core/themes/grades_page_colors.dart';
import 'package:betterschool/ui/grades/utils/grade_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:get_it/get_it.dart';

class MockSettingsRepository extends Mock implements SettingsRepository {}

class MockBrightnessModeSetting extends Mock implements BrightnessModeSetting {}

void main() {
  late MockSettingsRepository mockSettingsRepository;
  late MockBrightnessModeSetting mockBrightnessModeSetting;

  setUp(() {
    mockSettingsRepository = MockSettingsRepository();
    mockBrightnessModeSetting = MockBrightnessModeSetting();

    // Setup brightness mock
    when(
      () => mockSettingsRepository.brightness,
    ).thenReturn(mockBrightnessModeSetting);

    if (GetIt.I.isRegistered<SettingsRepository>()) {
      GetIt.I.unregister<SettingsRepository>();
    }
    GetIt.I.registerSingleton<SettingsRepository>(mockSettingsRepository);
  });

  tearDown(() {
    if (GetIt.I.isRegistered<SettingsRepository>()) {
      GetIt.I.unregister<SettingsRepository>();
    }
  });

  const exampleRule =
      "0.5*((Klassenarbeit_sum)/(Klassenarbeit_count))+0.5*((Sonstige_sum)/(Sonstige_count))";

  const exampleSubject = Subject(id: 1, name: 'Mathe', local_id: 'MA');

  List<Grade> exampleGrades = [
    Grade(
      title: "Test 1",
      subject: exampleSubject,
      valueString: "2",
      value: 2,
      valueWithModifiers: 2.0,
      type: 'Klassenarbeit',
      date: DateTime(2024, 5, 1),
    ),
    Grade(
      title: "Test 2",
      subject: exampleSubject,
      valueString: "3",
      value: 3,
      valueWithModifiers: 3.0,
      type: 'Klassenarbeit',
      date: DateTime(2024, 5, 15),
    ),
    Grade(
      title: "Test 3",
      subject: exampleSubject,
      valueString: "1",
      value: 1,
      valueWithModifiers: 1.0,
      type: 'Sonstige',
      date: DateTime(2024, 5, 20),
    ),
    Grade(
      title: "Test 4",
      subject: exampleSubject,
      valueString: "4",
      value: 4,
      valueWithModifiers: 4.0,
      type: 'Sonstige',
      date: DateTime(2024, 5, 25),
    ),
    Grade(
      title: "Test 5",
      subject: exampleSubject,
      valueString: "2-",
      value: 2,
      valueWithModifiers: 2.3,
      type: 'Sonstige',
      date: DateTime(2024, 5, 30),
    ),
  ];

  group('GradesHelper', () {
    test('extractTypesFromCalculationRule Test', () {
      Set<String> types = extractTypesFromCalculationRule(exampleRule);

      expect(types, {'Klassenarbeit', 'Sonstige'});
    });

    test(
      'calculateGradeAverageForSubject without modifiers and without rules',
      () {
        double avg = calculateGradeAverageForSubject(
          exampleGrades,
          useModifier: false,
          useBesteSchuleFormula: false,
        );

        expect(avg, closeTo(2.4, 0.001));
      },
    );

    test(
      'calculateGradeAverageForSubject with modifiers and without rules',
      () {
        double avg = calculateGradeAverageForSubject(
          exampleGrades,
          useModifier: true,
          useBesteSchuleFormula: false,
        );

        expect(avg, closeTo(2.46, 0.001));
      },
    );

    test(
      'calculateGradeAverageForSubject without modifiers and with rules',
      () {
        double avg = calculateGradeAverageForSubject(
          exampleGrades,
          useModifier: false,
          useBesteSchuleFormula: true,
          calculationRule: exampleRule,
        );

        expect(avg, closeTo(2.416, 0.001));
      },
    );

    test('calculateGradeAverageForSubject with modifiers and with rules', () {
      when(
        () => mockSettingsRepository.brightness.getValue(),
      ).thenReturn(ThemeMode.dark);

      double avg = calculateGradeAverageForSubject(
        exampleGrades,
        useModifier: true,
        useBesteSchuleFormula: true,
        calculationRule: exampleRule,
      );

      expect(avg, closeTo(2.466, 0.001));
    });

    test('getColorForGrade test', () {
      when(
        () => mockBrightnessModeSetting.getValue(),
      ).thenReturn(ThemeMode.light);
      expect(getColorForGrade(-1), invalidGradeBadgeColor);
      expect(getColorForGrade(2), goodGradeBadgeColor);
      expect(getColorForGrade(3), decentGradeBadgeColorLight);

      when(
        () => mockBrightnessModeSetting.getValue(),
      ).thenReturn(ThemeMode.dark);
      expect(getColorForGrade(3), decentGradeBadgeColor);
      expect(getColorForGrade(4.5), mediumGradeBadgeColor);
      expect(getColorForGrade(5), badGradeBadgeColor);
    });
  });
}
