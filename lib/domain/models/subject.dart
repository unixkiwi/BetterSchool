class Subject {
  final int id;
  final String name;
  final String shortName;

  const Subject({
    required this.id,
    required this.name,
    required this.shortName,
  });

  factory Subject.fromJson(Map json) {
    return Subject(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      shortName: json['local_id'] ?? "",
    );
  }
}
