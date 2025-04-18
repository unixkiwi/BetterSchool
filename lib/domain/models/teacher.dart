class Teacher {
  final String first;
  final String last;
  final String short;

  const Teacher({required this.first, required this.last, required this.short});

  factory Teacher.fromJson(Map json) {
    return Teacher(
      first: json['forename'] ?? "",
      last: json['name'] ?? "",
      short: json['local_id'] ?? "",
    );
  }
}
