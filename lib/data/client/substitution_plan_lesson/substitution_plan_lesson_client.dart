// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_substitution_plans_lessons_response.dart';

part 'substitution_plan_lesson_client.g.dart';

@RestApi()
abstract class SubstitutionPlanLessonClient {
  factory SubstitutionPlanLessonClient(Dio dio, {String? baseUrl}) = _SubstitutionPlanLessonClient;

  /// Substitution Plan Lesson: Index
  @GET('/substitution-plans/lessons')
  Future<GetSubstitutionPlansLessonsResponse> substitutionPlanLessonIndex();
}
