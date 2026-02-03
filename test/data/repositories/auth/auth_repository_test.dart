import 'package:betterschool/config/constants.dart';
import 'package:betterschool/data/repositories/auth/auth_repository.dart';
import 'package:betterschool/utils/result.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late AuthRepository authRepository;
  late MockFlutterSecureStorage mockStorage;

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    authRepository = AuthRepository(mockStorage);
  });

  group('AuthRepository', () {
    test('storeToken writes token to storage', () async {
      when(
        () => mockStorage.write(key: tokenKey, value: 'test_token'),
      ).thenAnswer((_) async {});

      await authRepository.storeToken('test_token');

      verify(
        () => mockStorage.write(key: tokenKey, value: 'test_token'),
      ).called(1);
    });

    test('getToken returns success when token exists', () async {
      when(
        () => mockStorage.read(key: tokenKey),
      ).thenAnswer((_) async => 'test_token');

      final result = await authRepository.getToken();

      expect(result, isA<Success<String>>());
      expect((result as Success).value, 'test_token');
      verify(() => mockStorage.read(key: tokenKey)).called(1);
    });

    test('getToken returns error when token is null', () async {
      when(() => mockStorage.read(key: tokenKey)).thenAnswer((_) async => null);

      final result = await authRepository.getToken();

      expect(result, isA<Error<String>>());
      expect((result as Error).error, isA<Exception>());
      verify(() => mockStorage.read(key: tokenKey)).called(1);
    });
  });
}
