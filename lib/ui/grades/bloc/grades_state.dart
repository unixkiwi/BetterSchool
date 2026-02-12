part of 'grades_bloc.dart';

@immutable
sealed class GradesState {}

final class GradesStateLoading extends GradesState {}

final class GradesEmptyState extends GradesState {}

enum GradesError { noConnection, forbidden, other }

final class GradesErrorState extends GradesState {
  final String title;
  final String description;
  final GradesError errorType;

  GradesErrorState({
    required this.title,
    required this.description,
    required this.errorType,
  });
}

final class GradesDataState extends GradesState {
  final GradesData data;

  GradesDataState(this.data);
}
