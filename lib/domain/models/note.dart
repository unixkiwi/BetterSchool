class Note {
  final String desc;
  final NoteType type;

  const Note({required this.desc, required this.type});

  factory Note.fromJson(Map json) {
    NoteType jsonToNoteType(String value) {
      switch (value) {
        case "Sonstige Leistung":
          return NoteType.TEST;
        case "Klassenarbeit":
          return NoteType.CLASS_TEST;
        case "Stundeninhalt":
          return NoteType.LESSON_CONTENT;
        case "Substitution Plan":
          return NoteType.TIMETABLE;
        default:
          return NoteType.NONE;
      }
    }

    return Note(
      desc: json['description'] ?? "",
      type: jsonToNoteType(json['type']['name']),
    );
  }

  Map<String, dynamic> toJson() => {
    'description': desc,
    'type': type.toString().split('.').last,
  };
}

enum NoteType { CLASS_TEST, TEST, LESSON_CONTENT, TIMETABLE, NONE }

extension NoteTypeDescription on NoteType {
  String get description {
    switch (this) {
      case NoteType.CLASS_TEST:
        return "Class test";
      case NoteType.TEST:
        return "Other test";
      case NoteType.LESSON_CONTENT:
        return "Content of the lesson";
      case NoteType.TIMETABLE:
        return "Timetable note";
      case NoteType.NONE:
        return "No type";
    }
  }
}
