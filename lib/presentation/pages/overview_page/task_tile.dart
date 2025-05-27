import 'package:flutter/material.dart';
import 'package:school_app/domain/models/note.dart';

class TaskTile extends StatelessWidget {
  final Note note;

  const TaskTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(note.desc),
    );
  }
}