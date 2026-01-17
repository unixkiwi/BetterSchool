// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_teachers_id_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteTeachersIdUserResponse _$DeleteTeachersIdUserResponseFromJson(
  Map<String, dynamic> json,
) => DeleteTeachersIdUserResponse(
  data: Teacher.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta140.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DeleteTeachersIdUserResponseToJson(
  DeleteTeachersIdUserResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
