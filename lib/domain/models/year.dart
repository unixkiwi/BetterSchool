class SchoolYear {
  int id;
  String name;
  DateTime from;
  DateTime to;

  SchoolYear({required this.id, required this.name, required this.from, required this.to});

  factory SchoolYear.empty() => SchoolYear(id: -1, name: 'Unknown Year', from: DateTime.now(), to: DateTime.now());
}
