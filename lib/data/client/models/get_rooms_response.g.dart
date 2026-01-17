// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rooms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRoomsResponse _$GetRoomsResponseFromJson(Map<String, dynamic> json) =>
    GetRoomsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetRoomsResponseToJson(GetRoomsResponse instance) =>
    <String, dynamic>{'data': instance.data};
