import 'package:equatable/equatable.dart';

class GradeCalculationRule extends Equatable {
  final int id;
  final String? rule;
  final int subjectId;
  final int intervalId;

  const GradeCalculationRule({
    required this.id,
    required this.rule,
    required this.subjectId,
    required this.intervalId,
  });

  factory GradeCalculationRule.empty() =>
      GradeCalculationRule(id: -1, rule: null, subjectId: -1, intervalId: -1);

  @override
  List<Object?> get props => [id, rule, subjectId, intervalId];
}
