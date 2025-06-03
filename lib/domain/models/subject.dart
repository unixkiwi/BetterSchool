class Subject {
  final String name;
  final String shortName;

  const Subject({
    required this.name,
    required this.shortName,
  });

  factory Subject.fromJson(Map json) {return Subject(
      name: json['name'] ?? "",
      shortName: json['local_id'] ?? "",
    );
  }
}
