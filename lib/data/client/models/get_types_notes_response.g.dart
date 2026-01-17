// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_types_notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTypesNotesResponse _$GetTypesNotesResponseFromJson(
  Map<String, dynamic> json,
) => GetTypesNotesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => NoteType.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTypesNotesResponseToJson(
  GetTypesNotesResponse instance,
) => <String, dynamic>{'data': instance.data};
