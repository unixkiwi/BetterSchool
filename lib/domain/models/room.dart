import 'package:equatable/equatable.dart';

class Room extends Equatable {
  final String name;

  const Room({required this.name});

  factory Room.empty() => Room(name: "---");

  @override
  List<Object?> get props => [name];
}
