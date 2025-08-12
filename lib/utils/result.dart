// Code in parts from https://docs.flutter.dev/app-architecture/design-patterns/result

/// Utility class that simplifies handling errors.
///
/// Return a [Result] from a function to indicate success or failure.
///
/// A [Result] is either an [Success] with a value of type [T]
/// or an [Error] with an [Exception].
///
/// Use [Result.success] to create a successful result with a value of type [T].
/// Use [Result.error] to create an error result with an [Exception].
sealed class Result<T> {
  const Result();

  factory Result.success(T value) => Success(value);

  factory Result.error(Exception error) => Error(error);
}

final class Success<T> extends Result<T> {
  final T value;

  const Success(this.value);
}

final class Error<T> extends Result<T> {
  final Exception error;

  const Error(this.error);
}
