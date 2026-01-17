// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Favorite _$FavoriteFromJson(Map<String, dynamic> json) => Favorite(
  id: (json['id'] as num).toInt(),
  student: Student.fromJson(json['student'] as Map<String, dynamic>),
  group: Group.fromJson(json['group'] as Map<String, dynamic>),
  subject: Subject.fromJson(json['subject'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FavoriteToJson(Favorite instance) => <String, dynamic>{
  'id': instance.id,
  'student': instance.student,
  'group': instance.group,
  'subject': instance.subject,
};
