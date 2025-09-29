import 'package:equatable/equatable.dart';

class Group extends Equatable {
  final String name;
  final String shortName;
  final bool isMeta;

  const Group({
    required this.name,
    required this.shortName,
    required this.isMeta,
  });

  factory Group.empty() =>
      Group(name: "Unknown group", shortName: "UNK", isMeta: false);

  @override
  List<Object?> get props => [name, shortName, isMeta];
}
