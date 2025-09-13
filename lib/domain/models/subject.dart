import 'package:equatable/equatable.dart';

class Subject extends Equatable {
  final int id;
  final String local_id;
  final String name;

  Subject({required this.id, required this.local_id, required this.name});

  @override
  List<Object?> get props => [id, local_id, name];
}
