class BesteSchuleStudent {
  final int studentId;
  final String forename;

  const BesteSchuleStudent({required this.studentId, required this.forename});

  factory BesteSchuleStudent.fromJson(Map json) {
    return BesteSchuleStudent(
      studentId: json['id'],
      forename: json['forename'],
    );
  }
}
