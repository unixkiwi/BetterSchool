import 'package:equatable/equatable.dart';

class Note extends Equatable {
  final String desc;
  final String type;

  const Note({required this.desc, required this.type});

  factory Note.empty() =>
      Note(desc: "No description provided", type: "No Type");

  @override
  List<Object?> get props => [desc, type];
}
