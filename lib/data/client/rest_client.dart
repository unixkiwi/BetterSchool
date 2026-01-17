// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';

import 'absence/absence_client.dart';
import 'absence_batch/absence_batch_client.dart';
import 'absence_type/absence_type_client.dart';
import 'absence_verification/absence_verification_client.dart';
import 'announcement/announcement_client.dart';
import 'announcement_type/announcement_type_client.dart';
import 'certificate_grade/certificate_grade_client.dart';
import 'checklist/checklist_client.dart';
import 'checklist_type/checklist_type_client.dart';
import 'collection/collection_client.dart';
import 'compute/compute_client.dart';
import 'favorite/favorite_client.dart';
import 'final_certificate/final_certificate_client.dart';
import 'finalgrade/finalgrade_client.dart';
import 'grade/grade_client.dart';
import 'group/group_client.dart';
import 'guardian/guardian_client.dart';
import 'history/history_client.dart';
import 'home/home_client.dart';
import 'importer/importer_client.dart';
import 'importer_stundenplan24/importer_stundenplan24_client.dart';
import 'interval/interval_client.dart';
import 'journal_day/journal_day_client.dart';
import 'journal_day_student/journal_day_student_client.dart';
import 'journal_lesson/journal_lesson_client.dart';
import 'journal_lesson_student/journal_lesson_student_client.dart';
import 'journal_note/journal_note_client.dart';
import 'journal_note_type/journal_note_type_client.dart';
import 'journal_week/journal_week_client.dart';
import 'level/level_client.dart';
import 'note/note_client.dart';
import 'note_type/note_type_client.dart';
import 'notification/notification_client.dart';
import 'report/report_client.dart';
import 'room/room_client.dart';
import 'school/school_client.dart';
import 'seating_plan/seating_plan_client.dart';
import 'site_status/site_status_client.dart';
import 'student/student_client.dart';
import 'subject/subject_client.dart';
import 'substitution_plan/substitution_plan_client.dart';
import 'substitution_plan_day/substitution_plan_day_client.dart';
import 'substitution_plan_lesson/substitution_plan_lesson_client.dart';
import 'tag/tag_client.dart';
import 'teacher/teacher_client.dart';
import 'time_table/time_table_client.dart';
import 'time_table_time/time_table_time_client.dart';
import 'time_table_time_lesson/time_table_time_lesson_client.dart';
import 'user/user_client.dart';
import 'year/year_client.dart';

/// beste.schule `v0.3`.
///
/// The API supports the following query parameters for filtering results. All filters are optional and can be combined.
///
/// **Available Filters:**.
///
/// **`filter[group]`** - Filter by group identifier(s). Multiple values separated by comma.
/// Example: `?filter[group]=class-a` or `?filter[group]=class-a,class-b`.
///
/// **`filter[student]`** - Filter by student identifier(s). Multiple values separated by comma.
/// Example: `?filter[student]=12345` or `?filter[student]=12345,67890`.
///
/// **`filter[guardian]`** - Filter by guardian identifier(s). Multiple values separated by comma.
/// Example: `?filter[guardian]=parent-001` or `?filter[guardian]=parent-001,parent-002`.
///
/// **`filter[teacher]`** - Filter by teacher identifier(s). Multiple values separated by comma.
/// Example: `?filter[teacher]=teacher-123` or `?filter[teacher]=teacher-123,teacher-456`.
///
/// **`filter[subject]`** - Filter by subject identifier(s). Multiple values separated by comma.
/// Example: `?filter[subject]=math` or `?filter[subject]=math,science`.
///
/// **`filter[room]`** - Filter by room identifier(s). Multiple values separated by comma.
/// Example: `?filter[room]=A101` or `?filter[room]=A101,B205`.
///
/// **`filter[interval]`** - Filter by time interval identifier(s). Multiple values separated by comma.
/// Example: `?filter[interval]=morning` or `?filter[interval]=morning,afternoon`.
///
/// **`filter[year]`** - Filter by academic year identifier(s). Multiple values separated by comma.
/// Example: `?filter[year]=2024` or `?filter[year]=2024,2025`.
///
/// **`filter[role]`** - Filter by user role. **Important:** Only accepts these values: `student`, `teacher`, `guardian`, `mod`.
/// Example: `?filter[role]=teacher`.
class RestClient {
  RestClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '0.3';

  AbsenceClient? _absence;
  AbsenceBatchClient? _absenceBatch;
  AbsenceTypeClient? _absenceType;
  AbsenceVerificationClient? _absenceVerification;
  AnnouncementClient? _announcement;
  AnnouncementTypeClient? _announcementType;
  CertificateGradeClient? _certificateGrade;
  ChecklistClient? _checklist;
  ChecklistTypeClient? _checklistType;
  CollectionClient? _collection;
  ComputeClient? _compute;
  FavoriteClient? _favorite;
  FinalCertificateClient? _finalCertificate;
  FinalgradeClient? _finalgrade;
  GradeClient? _grade;
  GroupClient? _group;
  GuardianClient? _guardian;
  HistoryClient? _history;
  HomeClient? _home;
  ImporterClient? _importer;
  ImporterStundenplan24Client? _importerStundenplan24;
  IntervalClient? _interval;
  JournalDayClient? _journalDay;
  JournalDayStudentClient? _journalDayStudent;
  JournalLessonClient? _journalLesson;
  JournalLessonStudentClient? _journalLessonStudent;
  JournalNoteClient? _journalNote;
  JournalNoteTypeClient? _journalNoteType;
  JournalWeekClient? _journalWeek;
  LevelClient? _level;
  NoteClient? _note;
  NoteTypeClient? _noteType;
  NotificationClient? _notification;
  ReportClient? _report;
  RoomClient? _room;
  SchoolClient? _school;
  SeatingPlanClient? _seatingPlan;
  SiteStatusClient? _siteStatus;
  StudentClient? _student;
  SubjectClient? _subject;
  SubstitutionPlanClient? _substitutionPlan;
  SubstitutionPlanDayClient? _substitutionPlanDay;
  SubstitutionPlanLessonClient? _substitutionPlanLesson;
  TagClient? _tag;
  TeacherClient? _teacher;
  TimeTableClient? _timeTable;
  TimeTableTimeClient? _timeTableTime;
  TimeTableTimeLessonClient? _timeTableTimeLesson;
  UserClient? _user;
  YearClient? _year;

  AbsenceClient get absence => _absence ??= AbsenceClient(_dio, baseUrl: _baseUrl);

  AbsenceBatchClient get absenceBatch => _absenceBatch ??= AbsenceBatchClient(_dio, baseUrl: _baseUrl);

  AbsenceTypeClient get absenceType => _absenceType ??= AbsenceTypeClient(_dio, baseUrl: _baseUrl);

  AbsenceVerificationClient get absenceVerification => _absenceVerification ??= AbsenceVerificationClient(_dio, baseUrl: _baseUrl);

  AnnouncementClient get announcement => _announcement ??= AnnouncementClient(_dio, baseUrl: _baseUrl);

  AnnouncementTypeClient get announcementType => _announcementType ??= AnnouncementTypeClient(_dio, baseUrl: _baseUrl);

  CertificateGradeClient get certificateGrade => _certificateGrade ??= CertificateGradeClient(_dio, baseUrl: _baseUrl);

  ChecklistClient get checklist => _checklist ??= ChecklistClient(_dio, baseUrl: _baseUrl);

  ChecklistTypeClient get checklistType => _checklistType ??= ChecklistTypeClient(_dio, baseUrl: _baseUrl);

  CollectionClient get collection => _collection ??= CollectionClient(_dio, baseUrl: _baseUrl);

  ComputeClient get compute => _compute ??= ComputeClient(_dio, baseUrl: _baseUrl);

  FavoriteClient get favorite => _favorite ??= FavoriteClient(_dio, baseUrl: _baseUrl);

  FinalCertificateClient get finalCertificate => _finalCertificate ??= FinalCertificateClient(_dio, baseUrl: _baseUrl);

  FinalgradeClient get finalgrade => _finalgrade ??= FinalgradeClient(_dio, baseUrl: _baseUrl);

  GradeClient get grade => _grade ??= GradeClient(_dio, baseUrl: _baseUrl);

  GroupClient get group => _group ??= GroupClient(_dio, baseUrl: _baseUrl);

  GuardianClient get guardian => _guardian ??= GuardianClient(_dio, baseUrl: _baseUrl);

  HistoryClient get history => _history ??= HistoryClient(_dio, baseUrl: _baseUrl);

  HomeClient get home => _home ??= HomeClient(_dio, baseUrl: _baseUrl);

  ImporterClient get importer => _importer ??= ImporterClient(_dio, baseUrl: _baseUrl);

  ImporterStundenplan24Client get importerStundenplan24 => _importerStundenplan24 ??= ImporterStundenplan24Client(_dio, baseUrl: _baseUrl);

  IntervalClient get interval => _interval ??= IntervalClient(_dio, baseUrl: _baseUrl);

  JournalDayClient get journalDay => _journalDay ??= JournalDayClient(_dio, baseUrl: _baseUrl);

  JournalDayStudentClient get journalDayStudent => _journalDayStudent ??= JournalDayStudentClient(_dio, baseUrl: _baseUrl);

  JournalLessonClient get journalLesson => _journalLesson ??= JournalLessonClient(_dio, baseUrl: _baseUrl);

  JournalLessonStudentClient get journalLessonStudent => _journalLessonStudent ??= JournalLessonStudentClient(_dio, baseUrl: _baseUrl);

  JournalNoteClient get journalNote => _journalNote ??= JournalNoteClient(_dio, baseUrl: _baseUrl);

  JournalNoteTypeClient get journalNoteType => _journalNoteType ??= JournalNoteTypeClient(_dio, baseUrl: _baseUrl);

  JournalWeekClient get journalWeek => _journalWeek ??= JournalWeekClient(_dio, baseUrl: _baseUrl);

  LevelClient get level => _level ??= LevelClient(_dio, baseUrl: _baseUrl);

  NoteClient get note => _note ??= NoteClient(_dio, baseUrl: _baseUrl);

  NoteTypeClient get noteType => _noteType ??= NoteTypeClient(_dio, baseUrl: _baseUrl);

  NotificationClient get notification => _notification ??= NotificationClient(_dio, baseUrl: _baseUrl);

  ReportClient get report => _report ??= ReportClient(_dio, baseUrl: _baseUrl);

  RoomClient get room => _room ??= RoomClient(_dio, baseUrl: _baseUrl);

  SchoolClient get school => _school ??= SchoolClient(_dio, baseUrl: _baseUrl);

  SeatingPlanClient get seatingPlan => _seatingPlan ??= SeatingPlanClient(_dio, baseUrl: _baseUrl);

  SiteStatusClient get siteStatus => _siteStatus ??= SiteStatusClient(_dio, baseUrl: _baseUrl);

  StudentClient get student => _student ??= StudentClient(_dio, baseUrl: _baseUrl);

  SubjectClient get subject => _subject ??= SubjectClient(_dio, baseUrl: _baseUrl);

  SubstitutionPlanClient get substitutionPlan => _substitutionPlan ??= SubstitutionPlanClient(_dio, baseUrl: _baseUrl);

  SubstitutionPlanDayClient get substitutionPlanDay => _substitutionPlanDay ??= SubstitutionPlanDayClient(_dio, baseUrl: _baseUrl);

  SubstitutionPlanLessonClient get substitutionPlanLesson => _substitutionPlanLesson ??= SubstitutionPlanLessonClient(_dio, baseUrl: _baseUrl);

  TagClient get tag => _tag ??= TagClient(_dio, baseUrl: _baseUrl);

  TeacherClient get teacher => _teacher ??= TeacherClient(_dio, baseUrl: _baseUrl);

  TimeTableClient get timeTable => _timeTable ??= TimeTableClient(_dio, baseUrl: _baseUrl);

  TimeTableTimeClient get timeTableTime => _timeTableTime ??= TimeTableTimeClient(_dio, baseUrl: _baseUrl);

  TimeTableTimeLessonClient get timeTableTimeLesson => _timeTableTimeLesson ??= TimeTableTimeLessonClient(_dio, baseUrl: _baseUrl);

  UserClient get user => _user ??= UserClient(_dio, baseUrl: _baseUrl);

  YearClient get year => _year ??= YearClient(_dio, baseUrl: _baseUrl);
}
