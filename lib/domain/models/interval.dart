class SchoolInterval {
  final int id;
  final String name;
  final DateTime from;
  final DateTime to;

  const SchoolInterval({
    required this.id,
    required this.name,
    required this.from,
    required this.to,
  });

  factory SchoolInterval.fromJson(Map json) {
    return SchoolInterval(
      id: json['id'] ?? -1,
      name: json['name'] ?? "No Name",
      from: json['from'] != null
          ? DateTime.tryParse(json['from']) ?? DateTime.now()
          : DateTime.now(),
      to: json['to'] != null
          ? DateTime.tryParse(json['to']) ?? DateTime.now()
          : DateTime.now(),
    );
  }
}
