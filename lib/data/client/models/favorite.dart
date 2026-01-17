// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'student.dart';
import 'subject.dart';

part 'favorite.g.dart';

@JsonSerializable()
class Favorite {
  const Favorite({
    required this.id,
    required this.student,
    required this.group,
    required this.subject,
  });
  
  factory Favorite.fromJson(Map<String, Object?> json) => _$FavoriteFromJson(json);
  
  final int id;
  final Student student;
  final Group group;
  final Subject subject;

  Map<String, Object?> toJson() => _$FavoriteToJson(this);
}
