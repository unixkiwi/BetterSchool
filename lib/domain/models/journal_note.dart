import 'package:equatable/equatable.dart';

class JournalNote extends Equatable {
  final String desc;

  const JournalNote({required this.desc});

  factory JournalNote.empty() => JournalNote(desc: "No description provided");

  @override
  List<Object?> get props => [desc];
}
