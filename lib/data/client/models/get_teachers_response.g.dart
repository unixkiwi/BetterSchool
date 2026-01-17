// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_teachers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTeachersResponse _$GetTeachersResponseFromJson(Map<String, dynamic> json) =>
    GetTeachersResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Teacher.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetTeachersResponseToJson(
  GetTeachersResponse instance,
) => <String, dynamic>{'data': instance.data};
