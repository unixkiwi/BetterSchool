import 'package:equatable/equatable.dart';

class Teacher extends Equatable {
  final int id;
  final String shortName;
  final String forename;
  final String name;

  const Teacher({
    required this.id,
    required this.shortName,
    required this.forename,
    required this.name,
  });

  @override
  List<Object?> get props => [id, shortName, forename, name];
}
