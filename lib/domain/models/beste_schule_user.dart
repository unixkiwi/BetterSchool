class BesteSchuleStudent {
  final int studnetId;
  final String forename;

  const BesteSchuleStudent({required this.studnetId, required this.forename});

  factory BesteSchuleStudent.fromJson(Map json) {
    return BesteSchuleStudent(
      studnetId: int.parse(json['id']),
      forename: json['forename'],
    );
  }
}
