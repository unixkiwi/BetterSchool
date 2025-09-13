import 'package:equatable/equatable.dart';

class Note extends Equatable {
  final String desc;
  final String type;

  Note({required this.desc, required this.type});

  @override
  List<Object?> get props => [desc, type];
}
