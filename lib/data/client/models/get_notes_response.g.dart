// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotesResponse _$GetNotesResponseFromJson(Map<String, dynamic> json) =>
    GetNotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetNotesResponseToJson(GetNotesResponse instance) =>
    <String, dynamic>{'data': instance.data};
