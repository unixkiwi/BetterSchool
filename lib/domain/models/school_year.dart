class SchoolYear {
  final int id;
  final String name;
  final DateTime from;
  final DateTime to;

  const SchoolYear({
    required this.id,
    required this.name,
    required this.from,
    required this.to,
  });

  factory SchoolYear.fromJson(Map json) {
    return SchoolYear(
      id: json['id'] ?? -1,
      name: json['name'] ?? "Unknown school year",
      from: json['from'] == null
          ? DateTime.now()
          : DateTime.tryParse(json['from']) ?? DateTime.now(),
      to: json['to'] == null
          ? DateTime.now()
          : DateTime.tryParse(json['to']) ?? DateTime.now(),
    );
  }
}
