// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_types_notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTypesNotesResponse _$PostTypesNotesResponseFromJson(
  Map<String, dynamic> json,
) => PostTypesNotesResponse(
  data: NoteType.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostTypesNotesResponseToJson(
  PostTypesNotesResponse instance,
) => <String, dynamic>{'data': instance.data};
