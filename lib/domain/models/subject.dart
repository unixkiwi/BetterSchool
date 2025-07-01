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
      name: json['name'] ?? "Unknown Subject",
      shortName: json['local_id'] ?? "---",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'shortName': shortName,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Subject &&
          id == other.id &&
          name == other.name &&
          shortName == other.shortName;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ shortName.hashCode;
}
