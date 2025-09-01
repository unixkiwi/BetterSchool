import 'package:equatable/equatable.dart';

class Group extends Equatable {
  final String name;
  final String shortName;
  final bool isMeta;

  Group({required this.name, required this.shortName, required this.isMeta});

  @override
  List<Object?> get props => [name, shortName, isMeta];
}
