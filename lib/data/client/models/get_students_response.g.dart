// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_students_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetStudentsResponse _$GetStudentsResponseFromJson(Map<String, dynamic> json) =>
    GetStudentsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetStudentsResponseToJson(
  GetStudentsResponse instance,
) => <String, dynamic>{'data': instance.data};
