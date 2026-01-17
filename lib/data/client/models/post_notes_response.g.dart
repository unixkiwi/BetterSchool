// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostNotesResponse _$PostNotesResponseFromJson(Map<String, dynamic> json) =>
    PostNotesResponse(
      data: Note.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostNotesResponseToJson(PostNotesResponse instance) =>
    <String, dynamic>{'data': instance.data};
