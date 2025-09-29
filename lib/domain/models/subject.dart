import 'package:equatable/equatable.dart';

class Subject extends Equatable {
  final int id;
  final String local_id;
  final String name;

  const Subject({required this.id, required this.local_id, required this.name});

  factory Subject.empty() =>
      Subject(id: -1, local_id: "---", name: "Unknown subject");

  @override
  List<Object?> get props => [id, local_id, name];
}
